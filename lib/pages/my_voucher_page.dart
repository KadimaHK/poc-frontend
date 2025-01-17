import 'dart:developer';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:poc_frontend/api/lib/api.dart' as api;
import 'package:poc_frontend/components/establishment_info_card_view.dart';
import 'package:poc_frontend/components/featured_offer_card_view.dart';
import 'package:poc_frontend/components/search_bar.dart';
import 'package:poc_frontend/components/status_tag.dart';
import 'package:poc_frontend/components/textbutton_secondary.dart';
import 'package:poc_frontend/consts.dart';
import 'package:poc_frontend/main.dart';
import 'package:poc_frontend/pages/featured_offer_detail_page.dart';

class MyVoucherPage extends StatefulWidget {
  const MyVoucherPage({super.key, required this.user});
  final api.User user;
  static const routeName = '/my_voucher';

  @override
  State<MyVoucherPage> createState() => _MyVoucherPageState();
}

class _MyVoucherPageState extends State<MyVoucherPage> with SingleTickerProviderStateMixin {
  List<_VoucherWidget> validVoucher = [];
  List<_VoucherWidget> invalidVoucher = [];

  TabController? _tabController;
  @override
  void initState() {
    super.initState();
    fetchData();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }

  void fetchData() async {
    List<api.UserFeaturedOffer>? userFeaturedOffer = (await api.UserFeaturedOfferApi(MyApp.sessionApiClient).userFeaturedOfferGet())!;
    for (var offer in userFeaturedOffer) {
      log(offer.toString());
      final featuredOffer = (await api.FeaturedOfferApi(MyApp.sessionApiClient).featuredOfferGet(id: 'eq.${offer.featuredOfferId}'))!.firstOrNull;
      if (featuredOffer == null) continue;

      final isRedeemed = offer.isRedeemed;
      final isExpired = DateTime.parse(featuredOffer!.expiryDate!).isBefore(DateTime.now());

      if (offer.isRedeemed || isExpired) {
        invalidVoucher.add(_VoucherWidget(
          userFeaturedOffer: offer,
          featuredOffer: featuredOffer,
          isRedeemed: isRedeemed,
          isExpired: isExpired,
        ));
      } else {
        validVoucher.add(_VoucherWidget(userFeaturedOffer: offer, featuredOffer: featuredOffer));
      }
    }
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        title: Text(t.myVoucher),
      ),
      body: Column(
        children: [
          TabBar(
            controller: _tabController,
            tabs: [
              Tab(text: t.myVoucher),
              Tab(text: "${t.redeemed}/${t.expired}"),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                ListView.separated(
                  itemBuilder: (context, index) {
                    return validVoucher[index];
                  },
                  separatorBuilder: (context, index) => const SizedBox(width: 10),
                  itemCount: validVoucher.length,
                ),
                ListView.separated(
                  itemBuilder: (context, index) {
                    return invalidVoucher[index];
                  },
                  separatorBuilder: (context, index) => const SizedBox(width: 10),
                  itemCount: invalidVoucher.length,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _VoucherWidget extends StatelessWidget {
  _VoucherWidget({required this.userFeaturedOffer, required this.featuredOffer, this.isRedeemed = false, this.isExpired = false});
  final api.UserFeaturedOffer userFeaturedOffer;
  final api.FeaturedOffer featuredOffer;
  bool isRedeemed = false;
  bool isExpired = false;

  Status get status {
    if (isRedeemed) return Status.redeemed;
    if (isExpired) return Status.expired;
    return Status.none;
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: [
          Text(featuredOffer.title ?? ''),
          SizedBox(width: 10),
          StatusTag(status: status),
        ],
      ),
      subtitle: Text(featuredOffer.description ?? ''),
      trailing: Icon(Icons.chevron_right_outlined),
    );
  }
}
