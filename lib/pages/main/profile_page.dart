import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:poc_frontend/components/app_bar.dart';
import 'package:poc_frontend/main.dart';
import 'package:poc_frontend/pages/login_page.dart';
import 'package:poc_frontend/api/lib/api.dart' as api;

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  void initState() {
    super.initState();
    if (MyApp.prefs!.getString('loginSessionToken') == null) {
      Navigator.pushNamed(context, LoginPage.routeName);
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    return Scaffold(
        appBar: MainAppBar(
          title: t.profile,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () async {
                    await api.RpcLogoutApi().rpcLogoutPost();
                    MyApp.prefs!.remove('loginSessionToken');
                    Navigator.pushReplacementNamed(context, LoginPage.routeName);
                  },
                  child: Text('logout'))
            ],
          ),
        ));
  }
}
