import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:poc_frontend/pages/barProfilePage.dart';
import 'package:poc_frontend/pages/explorePage.dart';
import 'package:poc_frontend/pages/homePage.dart';
import 'package:poc_frontend/pages/messagePage.dart';
import 'package:poc_frontend/pages/notificationPage.dart';
import 'package:poc_frontend/pages/profilePage.dart';
import 'package:poc_frontend/pages/searchPage.dart';
import 'package:poc_frontend/components/appBar.dart';
import 'pages/qrCodeScannerPage.dart';
import 'enums.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
  static _MyAppState? of(BuildContext context) => context.findAncestorStateOfType<_MyAppState>();
}

class _MyAppState extends State<MyApp> {
  Locale? _locale;
  void setLocale(Locale value) {
    setState(() {
      _locale = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    Color primaryColor = Color(0xFF5F4F55);
    Color secondaryColor = Color(0xFF78626A);
    return MaterialApp(
      title: 'POC',
      locale: _locale,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: primaryColor,
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
          actionsIconTheme: IconThemeData(color: Colors.white),
          iconTheme: IconThemeData(color: Colors.white),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: primaryColor,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
        ),
        colorScheme: ColorScheme.fromSeed(
          primary: secondaryColor,
          seedColor: primaryColor,
        ),
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.white,
              displayColor: Colors.white,
            ),
        primaryTextTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.white,
              displayColor: Colors.white,
            ),
        drawerTheme: DrawerThemeData(
          backgroundColor: primaryColor,
        ),
        listTileTheme: ListTileThemeData(
          tileColor: primaryColor,
          iconColor: Colors.white,
          textColor: Colors.white,
        ),
        tabBarTheme: TabBarTheme(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.grey,
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(),
          labelStyle: TextStyle(color: Colors.white),
          prefixStyle: TextStyle(color: Colors.white),
          suffixStyle: TextStyle(color: Colors.white),
        ),
        searchBarTheme: SearchBarThemeData(
          backgroundColor: WidgetStatePropertyAll(Colors.white),
          textStyle: WidgetStatePropertyAll(TextStyle(color: Colors.grey)),
          shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            foregroundColor: WidgetStatePropertyAll(Colors.white),
            backgroundColor: WidgetStatePropertyAll(const Color.fromARGB(16, 179, 135, 135)),
            shape: WidgetStatePropertyAll(CircleBorder()),
          ),
        ),
        chipTheme: ChipThemeData(
          backgroundColor: primaryColor.withAlpha(200),
          labelStyle: TextStyle(color: Colors.white),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1000), side: BorderSide(color: secondaryColor)),
        ),
        scaffoldBackgroundColor: primaryColor,
        iconButtonTheme: IconButtonThemeData(style: ButtonStyle(foregroundColor: WidgetStateProperty.all(Colors.white))),
        useMaterial3: true,
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  static final List<Widget> _list = [HomePage(), ExplorePage(), SearchPage(), MessagePage(), ProfilePage()];
//change for debug
  int _selectedIndex = 2;
  bool _isMainPage = true;

  void _onBackButtonPressed() {
    setState(() {
      _isMainPage = true;
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _isMainPage = true;
      _selectedIndex = index;
    });
  }

  Widget? _externalPage = BarProfilePage();
  void _onAppBarAction(AppBarAction action) {
    setState(() {
      _isMainPage = false;
      switch (action) {
        case AppBarAction.qrCodeScanner:
          Navigator.push(context, MaterialPageRoute(builder: (context) => QrCodeScannerPage()));
          break;
        case AppBarAction.notification:
          _externalPage = NotificationPage(onBackButtonPressed: _onBackButtonPressed);
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final List<String> titles = [t.home, t.explore, t.search, t.message, t.profile];

    return Scaffold(
      key: _scaffoldKey,
      drawer: _drawerMenu,
      appBar: _isMainPage
          ? MainAppBar(
              scaffoldKey: _scaffoldKey,
              onAction: _onAppBarAction,
              title: titles[_selectedIndex],
            )
          : null,
      body: _isMainPage ? _list[_selectedIndex] : _externalPage,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (value) => _onItemTapped(value),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: t.home),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: t.explore),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: t.search),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: t.message),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: t.profile),
        ],
      ),
    );
  }
}


Widget _drawerMenu = Drawer(
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
