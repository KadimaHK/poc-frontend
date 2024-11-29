import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:poc_frontend/api/lib/api.dart' as api;
import 'package:poc_frontend/components/profile_drawer.dart';
import 'package:poc_frontend/pages/bar_profile_page.dart';
import 'package:poc_frontend/pages/featured_detail_page.dart';
import 'package:poc_frontend/pages/login_page.dart';
import 'package:poc_frontend/pages/main/explore_page.dart';
import 'package:poc_frontend/pages/main/home_page.dart';
import 'package:poc_frontend/pages/main/message_page.dart';
import 'package:poc_frontend/pages/notification_page.dart';
import 'package:poc_frontend/pages/main/profile_page.dart';
import 'package:poc_frontend/pages/main/search_page.dart';
import 'package:poc_frontend/components/app_bar.dart';
import 'package:poc_frontend/pages/sign_up_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'pages/qr_code_scanner_page.dart';
import 'enums.dart';
import 'dart:developer';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  static SharedPreferences? prefs;
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
  void initState() {
    super.initState();
    SharedPreferences.getInstance().then((value) {
      MyApp.prefs = value;
      final String? languageCode = value.getString('languageCode');
      final String? countryCode = value.getString('countryCode');
      if (languageCode != null && countryCode != null) {
        _locale = Locale(languageCode, countryCode);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Color primaryColor = Color(0xFF5F4F55);
    Color secondaryColor = Color(0xFF78626A);
    Color tertiaryColor = Color(0xFFFFF1D8);
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
          primary: primaryColor,
          seedColor: primaryColor,
          secondary: secondaryColor,
          surface: tertiaryColor,
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
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
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
            shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
            foregroundColor: WidgetStatePropertyAll(const Color(0xFF4F3B49)),
            backgroundColor: WidgetStatePropertyAll(const Color(0xFFFFF1D8)),
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
      home: Main(),
    );
  }
}

class Main extends StatefulWidget {
  const Main({super.key});
  @override
  State<Main> createState() => MainState();
}

class MainState extends State<Main> {
  static final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static final List<Widget> _list = [HomePage(), ExplorePage(), SearchPage(), MessagePage()];
//change for debug
  int _selectedIndex = 0;


  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Scaffold(
      key: scaffoldKey,
      drawer: profileDrawer,
      body: Navigator(
        key: navigatorKey,
        onGenerateRoute: (settings) {
          log("onGenerateRoute", name: 'Main');
          log(_selectedIndex.toString(), name: 'selectedIndex');
          log(settings.name.toString(), name: 'settings.name');
          if (settings.name == NotificationPage.routeName) {
            return MaterialPageRoute(builder: (context) {
              return NotificationPage();
            });
          }
          if (settings.name == FeaturedDetailPage.routeName) {
            final featured = settings.arguments as api.VwFeatured;
            return MaterialPageRoute(builder: (context) {
              return FeaturedDetailPage(featured: featured);
            });
          }
          if(settings.name == SignUpPage.routeName){
            return MaterialPageRoute(builder: (context) {
              return SignUpPage();
            });
          }

          // for the main pages without transition animation
          return PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) {
              log('PageRouteBuilder', name: 'Main');
              if (_selectedIndex == 4) {
                //check if user is logged in
                log(MyApp.prefs!.getString('loginSessionToken') ?? 'no loginSessionToken', name: 'loginSessionToken');
                if (MyApp.prefs!.getString('loginSessionToken') == null) {
                  return LoginPage();
                } else {
                  return ProfilePage();
                }
              }
              return _list[_selectedIndex];
            },
            transitionDuration: Duration.zero,
            reverseTransitionDuration: Duration.zero,
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() => _selectedIndex = index);
          navigatorKey.currentState!.pushReplacementNamed('/');
        },
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
