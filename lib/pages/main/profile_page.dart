import 'dart:developer';
import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:poc_frontend/components/app_bar.dart';
import 'package:poc_frontend/components/user_membership_card.dart';
import 'package:poc_frontend/main.dart';
import 'package:poc_frontend/pages/login_page.dart';
import 'package:poc_frontend/api/lib/api.dart' as api;
import 'package:http/src/client.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});
  static String routeName = '/profile';
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  api.User? user;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (MyApp.prefs!.getString('loginSessionToken') == null) {
        Navigator.pushNamed(context, LoginPage.routeName);
        return;
      } else {
        fetchUser();
      }
    });
  }

  void fetchUser() async {
    try {
      final users = await api.UserApi(MyApp.sessionApiClient).userGet();      
      final user = users != null && users.isNotEmpty ? users[0] : null;
      setState(() {
        this.user = user;
      });
    } catch (e) {
      log('Error fetching user: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    if (user == null) {
      return Scaffold(
        appBar: MainAppBar(
          title: "${t.loading}...",
        ),
        body: Center(
          child: SizedBox(
            width: 100,
            height: 100,
            child: CircularProgressIndicator(
              backgroundColor: Colors.white,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.grey),
            ),
          ),
        ),
      );
    }

    return Scaffold(
        appBar: MainAppBar(
          title: user!.name ?? '',
        ),
        body: ListView(
          children: [
            Row(
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text('${user!.followerCount}\n${t.followers}'),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('${user!.followingCount}\n${t.following}'),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(t.edit),
                ),
              ],
            ),
            Text(user?.description ?? ''),
            UserMembershipCard(),
          ],
        ));
  }
}
