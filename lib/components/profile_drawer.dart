import 'package:flutter/material.dart';

Widget profileDrawer = Drawer(
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
            Text('User Name'),
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
        onTap: () {},
      ),
    ],
  ),
);
