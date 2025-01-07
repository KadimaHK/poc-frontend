import 'dart:developer';
import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:poc_frontend/components/app_bar.dart';
import 'package:poc_frontend/components/icon_button_label.dart';
import 'package:poc_frontend/components/textbutton_no_background.dart';
import 'package:poc_frontend/components/textbutton_secondary.dart';
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

class _ProfilePageState extends State<ProfilePage> with SingleTickerProviderStateMixin {
  late final TabController _tabController;

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
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  void fetchUser() async {
    final users = await api.UserApi(MyApp.sessionApiClient).userGet();
    final user = users != null && users.isNotEmpty ? users[0] : null;
    setState(() {
      this.user = user;
    });
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    if (user == null) {
      return Scaffold(
        appBar: MainAppBar(
          title: '${t.loading}...',
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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButtonNoBackground(
                onPressed: () {},
                text: '${user!.followerCount}\n${t.followers}',
              ),
              TextButtonNoBackground(
                onPressed: () {},
                text: '${user!.followingCount}\n${t.following}',
              ),
              SizedBox(width: 10),
              Expanded(
                child: TextButtonSecondary(onPressed: () {}, text: t.edit),
              ),
            ],
          ),
          _Description(description: user?.description ?? ''),
          UserMembershipCard(user: user!),
          Text(t.earnPointsToRenewMembershipDesc('${user?.points!}', user?.pointsExpiry?.substring(0, 10) ?? '', '3000')),
          LinearProgressIndicator(
            value: user!.points! / 3000,
          ),
          Text(t.membershipRemainingDays(
            user!.pointsExpiry?.substring(0, 10) ?? '',
            DateTime.parse(user!.pointsExpiry!).difference(DateTime.now()).inDays.toString(),
            (3000 - user!.points!).toString(),
          )),
          Text(t.learnMore),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              LabeledIconButton(
                size: 50,
                assetImagePath: 'assets/images/icon_menu_voucher.png',
                label: t.vouchers,
                onPressed: () {},
              ),
              LabeledIconButton(
                assetImagePath: 'assets/images/icon_menu_booking.png',
                label: t.bookings,
                onPressed: () {},
              ),
              LabeledIconButton(
                assetImagePath: 'assets/images/icon_menu_benefit.png',
                label: t.exclusiveBenefit,
                onPressed: () {},
              ),
              LabeledIconButton(
                assetImagePath: 'assets/images/icon_menu_store.png',
                label: t.storedLiqueurs,
                onPressed: () {},
              ),
            ],
          ),
          Column(
            children: [
              TabBar(
                tabs: [
                  Tab(text: t.overview),
                  Tab(text: t.bookmarks),
                  Tab(text: t.reviews),
                  Tab(text: t.photos),
                ],
                controller: _tabController,
              )
            ],
          )
        ],
      ),
    );
  }
}

class _Description extends StatelessWidget {
  final String description;
  const _Description({required this.description, super.key});
  @override
  Widget build(BuildContext context) {
    return Text(description);
  }
}
