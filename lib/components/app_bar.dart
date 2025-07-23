import 'package:flutter/material.dart';
import 'package:poc_frontend/l10n/app_localizations.dart';
import 'package:poc_frontend/main.dart';
import 'package:poc_frontend/consts.dart';
import 'package:poc_frontend/pages/notification_page.dart';
import 'package:poc_frontend/pages/qr_code_scanner_page.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBar({super.key, this.title = '', this.icon = const Icon(Icons.person)});
  final String title;
  final Icon icon;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  AppBar build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return AppBar(
      leading: IconButton(
        icon: icon,
        onPressed: () => scaffoldKey.currentState?.openDrawer(),
      ),
      title: Text(title),
      actions: [
        PopupMenuButton<Locale>(
          icon: const Icon(Icons.language),
          onSelected: MyApp.of(context)!.setLocale,
          itemBuilder: (BuildContext context) {
            return [
              const PopupMenuItem(
                value: Locale('en', 'US'),
                child: Text('English'),
              ),
              const PopupMenuItem(
                value: Locale('zh', 'TW'),
                child: Text('繁體中文'),
              ),
            ];
          },
        ),
        IconButton(onPressed: () => rootNavigatorKey.currentState?.push(MaterialPageRoute(builder: (context) => QrCodeScannerPage())), icon: Icon(Icons.qr_code_scanner)),
        IconButton(onPressed: () => Navigator.pushNamed(context, NotificationPage.routeName), icon: Icon(Icons.notifications_none)),
      ],
    );
  }
}
