import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:poc_frontend/main.dart';
import 'package:poc_frontend/enums.dart';
import 'package:poc_frontend/pages/qr_code_scanner_page.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBar({super.key, this.title = ''});
  final String title;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  AppBar build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.person),
        onPressed: () => MainState.scaffoldKey.currentState?.openDrawer(),
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
        IconButton(onPressed:() => MainState.navigatorKey.currentState?.push(MaterialPageRoute(builder: (context) => QrCodeScannerPage())), icon: Icon(Icons.qr_code_scanner)),
        IconButton(onPressed: () => Navigator.pushNamed(context, '/notification_page'), icon: Icon(Icons.notifications_none)),
      ],
    );
  }
}
