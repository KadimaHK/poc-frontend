import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:poc_frontend/api/lib/api.dart' as api;
import 'package:poc_frontend/main.dart';

class ProfileDrawer extends StatefulWidget {
  const ProfileDrawer({super.key});

  @override
  State<ProfileDrawer> createState() => _ProfileDrawerState();
}

class _ProfileDrawerState extends State<ProfileDrawer> {
  api.User? user;

  fetchData() async {
    final email = MyApp.prefs!.getString('email') ?? '';
    if (email.isEmpty) 
    {
      user = null;
      setState(() {});
      return;
    }

    user = (await api.UserApi().userGet(email: email, select: "name,email"))?[0];
    setState(() {});
  }

  @override
  initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: Image.network("https://www.shareicon.net/data/128x128/2016/05/24/770117_people_512x512.png").image,
                ),
                const SizedBox(width: 20),
                Text(user?.name ?? 'User Name'),
                IconButton(onPressed: () => {}, icon: Icon(Icons.qr_code, color: Colors.white)),
              ],
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
            onTap: () {},
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
          ListTile(
            title: Text(
              'Logout',
              textAlign: TextAlign.center,
            ),
            tileColor: Color(0xFF78626A),
            onTap: () async {
              await api.RpcLogoutApi().rpcLogoutPost();
              MyApp.prefs!.remove('loginSessionToken');
              MyApp.prefs!.remove('email');
            },
          ),
        ],
      ),
    );
  }
}


// Widget profileDrawer = Drawer(
//   child: ListView(
//     children: [
//       DrawerHeader(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             CircleAvatar(
//               radius: 30,
//               backgroundImage: Image.network("https://www.shareicon.net/data/128x128/2016/05/24/770117_people_512x512.png").image,
//             ),
//             const SizedBox(width: 20),
//             Text('User Name'),
//             IconButton(onPressed: () => {}, icon: Icon(Icons.qr_code, color: Colors.white)),
//           ],
//         ),
//       ),
//       ListTile(
//         leading: Icon(Icons.table_bar_outlined),
//         title: Text('Bookings'),
//         subtitle: Text('Show all reservations'),
//         onTap: () {},
//       ),
//       ListTile(
//         leading: Icon(Icons.archive_outlined),
//         title: Text('Setting'),
//         subtitle: Text('Record and show details of your stored liqueurs'),
//         onTap: () {},
//       ),
//       ListTile(
//         leading: Icon(Icons.confirmation_num_outlined),
//         title: Text('Vouchers'),
//         subtitle: Text('Show all vouchers'),
//         onTap: () {},
//       ),
//       //split line
//       const Divider(),
//       ListTile(
//         leading: Icon(Icons.history),
//         title: Text('Browsing History'),
//         onTap: () {},
//       ),
//       ListTile(
//         leading: Icon(Icons.history),
//         title: Text('Order History'),
//         onTap: () {},
//       ),
//       ListTile(
//         leading: Icon(Icons.admin_panel_settings_outlined),
//         title: Text('Privacy Setting'),
//         onTap: () {},
//       ),
//       const Divider(),
//       ListTile(
//         title: Text('Need Help'),
//         onTap: () {},
//       ),
//       ListTile(
//         title: Text('About Us'),
//         onTap: () {},
//       ),
//       ListTile(
//         title: Text('Where is my vouchers'),
//         onTap: () {},
//       ),
//       const Divider(),
//       ListTile(
//         title: Text(
//           'Logout',
//           textAlign: TextAlign.center,
//         ),
//         tileColor: Color(0xFF78626A),
//         onTap: () async {
//           log('logout', name: 'logout');
//           await api.RpcLogoutApi().rpcLogoutPost();
//           log('logout', name: 'logout');
//           MyApp.prefs!.remove('loginSessionToken');
//         },
//       ),
//     ],
//   ),
// );
