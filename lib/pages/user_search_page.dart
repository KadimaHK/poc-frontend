import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:poc_frontend/api/lib/api.dart' as api;
import 'package:poc_frontend/components/search_bar.dart';
import 'package:poc_frontend/components/textbutton_no_background.dart';
import 'package:poc_frontend/main.dart';
import 'package:poc_frontend/pages/main/profile_page.dart';

class UserSearchPage extends StatefulWidget {
  const UserSearchPage({super.key});
  static const routeName = '/user_search';
  @override
  State<UserSearchPage> createState() => _UserSearchPageState();
}

class _UserSearchPageState extends State<UserSearchPage> {
  List<api.VwUserAnon>? friends = [];

  List<api.VwUserAnon>? searchResult = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  void fetchData() async {
    {
      List<api.Friend>? fds = (await api.FriendApi(MyApp.sessionApiClient).friendGet())!;
      for (api.Friend item in fds) {
        api.VwUserAnon user = (await api.VwUserAnonApi().vwUserAnonGet(id: 'eq.${item.friendId}'))!.first;
        friends?.add(user);
        log(user.toString());
      }
      for (int i = 0; i < 15; i++) {
        friends?.add(api.VwUserAnon(uuid: '1', name: 'name', iconUrl: 'https://picsum.photos/200/300'));
      }
      searchResult = friends;
    }
    if (mounted) {
      setState(() {});
    }
  }

  void search(String keyword) {
    if (keyword.isEmpty) {
      searchResult = friends;
    } else {
      searchResult = friends?.where((element) => element.name!.contains(keyword)).toList();
    }
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        title: MainSearchBar(
          onChanged: search,
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(t.recent),
              TextButtonNoBackground(text: t.clear, onPressed: () {}),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: searchResult?.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(searchResult![index].iconUrl ?? ''),
                  ),
                  title: Text(searchResult![index].name!),
                  onTap: () {
                    Navigator.of(context).pushNamed(ProfilePage.routeName, arguments: searchResult![index]);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
