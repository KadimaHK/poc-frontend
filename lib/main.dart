import 'dart:convert';
import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:poc_frontend/api/lib/api.dart' as api;
import 'package:poc_frontend/api/lib/api.dart';
import 'package:poc_frontend/components/profile_drawer.dart';
import 'package:poc_frontend/pages/establishment_profile_page.dart';
import 'package:poc_frontend/pages/featured_detail_page.dart';
import 'package:poc_frontend/pages/featured_offer_detail_page.dart';
import 'package:poc_frontend/pages/login_page.dart';
import 'package:poc_frontend/pages/main/explore_page.dart';
import 'package:poc_frontend/pages/main/home_page.dart';
import 'package:poc_frontend/pages/main/message_page.dart';
import 'package:poc_frontend/pages/main/profile_page.dart';
import 'package:poc_frontend/pages/main/search_page.dart';
import 'package:poc_frontend/pages/my_exclusive_benefit_page.dart';
import 'package:poc_frontend/pages/my_voucher_page.dart';
import 'package:poc_frontend/pages/notification_page.dart';
import 'package:poc_frontend/pages/review_page.dart';
import 'package:poc_frontend/pages/sign_up_page.dart';
import 'package:poc_frontend/pages/stored_liqueur_detail_page.dart';
import 'package:poc_frontend/pages/stored_liqueur_page.dart';
import 'package:poc_frontend/pages/stored_liqueur_transfer_page.dart';
import 'package:poc_frontend/pages/voucher_detail_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  PlatformDispatcher.instance.onError = (error, stack) {
    if (error is api.ApiException) {
      return apiErrorHandler(error);
    }
    return false;
  };
  runApp(const MyApp());
}

bool apiErrorHandler(api.ApiException error) {
  switch (error.code) {
    case 400:
      {
        var messageDict = JsonDecoder().convert(error.message!);
        if (messageDict['code'] == "P0001" && messageDict['message'] == "Invalid session token") {
          MyApp.prefs!.remove('loginSessionToken');
          MyApp.sessionApiClient = null;
          navigatorKey.currentState!.pushNamed(LoginPage.routeName);
          return true;
        }
        return false;
      }
    case 503:
      {
        log('Service Unavailable');
        return true;
      }
    default:
      {
        return false;
      }
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  static SharedPreferences? prefs;
  static ApiClient? sessionApiClient;
  @override
  State<MyApp> createState() => MyAppState();
  static MyAppState? of(BuildContext context) => context.findAncestorStateOfType<MyAppState>();
}

extension ApiSetter on api.ApiKeyAuth {
  set apiKey(String apiKey) => this.apiKey = apiKey;
  String get apiKey => this.apiKey;
}

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class MyAppState extends State<MyApp> {
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
      //DebugOnly:
      value.setString('loginSessionToken', 'tokenKiu');
      MyApp.prefs = value;
      final String? languageCode = value.getString('languageCode');
      final String? countryCode = value.getString('countryCode');
      if (languageCode != null && countryCode != null) {
        _locale = Locale(languageCode, countryCode);
      }
      if (value.getString('loginSessionToken') != null) {
        ApiKeyAuth apiClientAuth = ApiKeyAuth('header', 'session-token');
        apiClientAuth.apiKey = value.getString('loginSessionToken')!;
        MyApp.sessionApiClient = ApiClient(authentication: apiClientAuth);
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
      navigatorKey: rootNavigatorKey,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: primaryColor,
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
          actionsIconTheme: IconThemeData(color: Colors.white),
          iconTheme: IconThemeData(color: Colors.white),
        ),
        dialogTheme: DialogTheme(
          backgroundColor: primaryColor,
          titleTextStyle: TextStyle(color: Colors.white),
          contentTextStyle: TextStyle(color: Colors.white),
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
        cardTheme: CardTheme(
          color: secondaryColor,
          elevation: 5,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        iconTheme: IconThemeData(color: Colors.white),
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
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
            shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
            foregroundColor: WidgetStatePropertyAll(Colors.white),
            backgroundColor: WidgetStatePropertyAll(Colors.transparent),
          ),
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
        progressIndicatorTheme: ProgressIndicatorThemeData(color: tertiaryColor, refreshBackgroundColor: secondaryColor, linearTrackColor: secondaryColor, circularTrackColor: secondaryColor),
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
  static final List<Widget> _list = [HomePage(), ExplorePage(), SearchPage(), MessagePage(), ProfilePage()];
//change for debug
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Scaffold(
      key: scaffoldKey,
      drawer: ProfileDrawer(),
      body: Navigator(
        key: navigatorKey,
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case StoredLiqueurTransferPage.routeName:
              return MaterialPageRoute(builder: (_) => StoredLiqueurTransferPage(storedLiqueur: settings.arguments as api.StoredLiqueur));
            case StoredLiqueurDetailPage.routeName:
              return MaterialPageRoute(builder: (_) => StoredLiqueurDetailPage(storedLiqueur: settings.arguments as api.StoredLiqueur));
            case MyExclusiveBenefitPage.routeName:
              return MaterialPageRoute(builder: (_) => MyExclusiveBenefitPage(user: settings.arguments as api.User));
            case VoucherDetailPage.routeName:
              return MaterialPageRoute(builder: (_) => VoucherDetailPage(userVoucher: settings.arguments as api.UserFeaturedOffer));
            case StoredLiqueurPage.routeName:
              return MaterialPageRoute(builder: (_) => StoredLiqueurPage(user: settings.arguments as api.User));
            case MyVoucherPage.routeName:
              return MaterialPageRoute(builder: (_) => MyVoucherPage(user: settings.arguments as api.User));
            case NotificationPage.routeName:
              return MaterialPageRoute(builder: (_) => NotificationPage());
            case FeaturedDetailPage.routeName:
              return MaterialPageRoute(builder: (_) => FeaturedDetailPage(featured: settings.arguments as api.Featured));
            case ReviewPage.routeName:
              return MaterialPageRoute(builder: (_) => ReviewPage(review: settings.arguments as api.Review));
            case SignUpPage.routeName:
              return MaterialPageRoute(builder: (_) => SignUpPage());
            case FeaturedOfferDetailPage.routeName:
              return MaterialPageRoute(builder: (_) => FeaturedOfferDetailPage(featuredOffer: settings.arguments as api.FeaturedOffer));
            case LoginPage.routeName:
              return MaterialPageRoute(builder: (_) => LoginPage());
            case EstablishmentProfilePage.routeName:
              return MaterialPageRoute(builder: (_) => EstablishmentProfilePage(establishment: settings.arguments as api.Establishment));
            default:
              return PageRouteBuilder(
          pageBuilder: (_, __, ___) => _list[_selectedIndex],
          transitionDuration: Duration.zero,
          reverseTransitionDuration: Duration.zero,
              );
          }
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
