import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:poc_frontend/l10n/app_localizations.dart';
import 'package:poc_frontend/api/lib/api.dart' as api;
import 'package:poc_frontend/components/app_bar.dart';
import 'package:poc_frontend/consts.dart';
import 'package:poc_frontend/main.dart';
import 'package:poc_frontend/pages/chat_page.dart';
import 'package:poc_frontend/pages/login_page.dart';
import 'package:poc_frontend/pages/main/profile_page.dart';
import 'package:poc_frontend/pages/user_search_page.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  List<api.User>? friends = [];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (MyApp.prefs!.getString('loginSessionToken') == null) {
        Navigator.pushNamed(context, LoginPage.routeName);
        return;
      } else {
        fetchData();
      }
    });
  }

  void fetchData() async {
    {
      List<api.Friend>? fds = (await api.FriendApi(MyApp.sessionApiClient).friendGet())!;
      for (api.Friend item in fds) {
        // api.User user = (await api.UserApi().userGet(id: 'eq.${item.friendId}', select: 'id,uuid,name,icon_url,following_count,follower_count'))!.first;
        api.User user = (await api.UserApi(MyApp.sessionApiClient).userGet(id: 'eq.${item.friendId}'))!.first;
        friends?.add(user);
        log(user.toString());
      }
    }
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: MainAppBar(
        title: t.message,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                    child: SearchBar(
                  onTap: () => Navigator.pushNamed(context, UserSearchPage.routeName),
                )),
                IconButton(onPressed: () {}, icon: Icon(Icons.add_circle_outline_outlined)),
              ],
            ),
            SizedBox(height: 20),
            Text(t.online, style: Theme.of(context).textTheme.titleMedium),
            Expanded(
              flex: 2,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(backgroundImage: CachedNetworkImageProvider(friends?[index].iconUrl ?? '')),
                        Text(friends?[index].name ?? ''),
                      ],
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(
                        width: 20,
                      ),
                  itemCount: friends?.length ?? 0),
            ),
            Text(t.chat, style: Theme.of(context).textTheme.titleMedium),
            Expanded(
              flex: 1,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: ChatTypes.values.length,
                itemBuilder: (context, index) => RawChip(
                  label: Text(t.chatTypes(ChatTypes.values[index].toString())),
                  onPressed: () => {},
                ),
                separatorBuilder: (context, index) {
                  return SizedBox(width: 10);
                },
              ),
            ),
            Expanded(
              flex: 8,
              child: ListView.separated(
                itemCount: friends?.length ?? 0,
                itemBuilder: (context, index) => ListTile(
                  leading: IconButton(
                    onPressed: () => Navigator.pushNamed(context, ProfilePage.routeName, arguments: friends?[index]),
                    icon: CircleAvatar(
                      backgroundImage: CachedNetworkImageProvider(friends?[index].iconUrl ?? ''),
                    ),
                  ),
                  title: Text(friends?[index].name ?? ''),
                  subtitle: Text(friends?[index].uuid ?? ''),
                  onTap: () => Navigator.pushNamed(context, ChatPage.routeName, arguments: friends?[index]),
                ),
                separatorBuilder: (context, index) {
                  return SizedBox(width: 10);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
