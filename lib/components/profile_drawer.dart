import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:poc_frontend/api/lib/api.dart' as api;
import 'package:poc_frontend/main.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:poc_frontend/pages/login_page.dart';
import 'package:poc_frontend/pages/main/home_page.dart';
import 'package:poc_frontend/pages/main/profile_page.dart';
import 'package:poc_frontend/pages/my_voucher_page.dart';

class ProfileDrawer extends StatefulWidget {
  const ProfileDrawer({super.key});

  @override
  State<ProfileDrawer> createState() => _ProfileDrawerState();
}

class _ProfileDrawerState extends State<ProfileDrawer> {
  api.User? user;
  bool loggedIn = false;

  fetchData() async {
    if (!loggedIn) {
      user = null;
      if (mounted) {
        setState(() {});
      }
      return;
    }

    user = (await api.UserApi(MyApp.sessionApiClient).userGet())!.firstOrNull;
    if (mounted) {
      setState(() {});
    }
  }

  @override
  initState() {
    super.initState();
    loggedIn = MyApp.prefs!.getString('loginSessionToken') != null;
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: GestureDetector(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.white,
                    child: loggedIn
                        ? user?.iconUrl != null
                            ? Image.network(user!.iconUrl!)
                            : Icon(Icons.person, size: 30)
                        : Icon(Icons.person, size: 30),
                  ),
                  const SizedBox(width: 20),
                  Text(user?.name ?? t.login),
                  IconButton(onPressed: () => {}, icon: Icon(Icons.qr_code, color: Colors.white)),
                ],
              ),
              onTap: () {
                navigatorKey.currentState!.pushNamed(ProfilePage.routeName);
                Navigator.pop(context);
              },
            ),
          ),
          ListTile(
            leading: Icon(Icons.table_bar_outlined),
            title: Text('Bookings'),
            subtitle: Text('Show all reservations'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.archive_outlined),
            title: Text('Setting'),
            subtitle: Text('Record and show details of your stored liqueurs'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.confirmation_num_outlined),
            title: Text('Vouchers'),
            subtitle: Text('Show all vouchers'),
            onTap: () => {Navigator.pop(context), navigatorKey.currentState?.pushNamed(MyVoucherPage.routeName, arguments: user)},
          ),
          //split line
          const Divider(),
          ListTile(
            leading: Icon(Icons.history),
            title: Text('Browsing History'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.history),
            title: Text('Order History'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.admin_panel_settings_outlined),
            title: Text('Privacy Setting'),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            title: Text('Need Help'),
            onTap: () {},
          ),
          ListTile(
            title: Text('About Us'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Where is my vouchers'),
            onTap: () {},
          ),
          const Divider(),
          if (loggedIn)
            ListTile(
              title: Text(
                'Logout',
                textAlign: TextAlign.center,
              ),
              tileColor: Color(0xFF78626A),
              onTap: () async {
                await api.RpcLogoutApi().rpcLogoutPost();
                MyApp.prefs!.remove('loginSessionToken');
                MyApp.sessionApiClient = null;
                Navigator.pop(context);
                navigatorKey.currentState!.pushReplacementNamed('/');
              },
            ),
        ],
      ),
    );
  }
}
