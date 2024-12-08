import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:poc_frontend/api/lib/api.dart' as api;
import 'package:poc_frontend/components/featured_offer_card_view.dart';
import 'package:poc_frontend/main.dart';

class FeaturedOffersPage extends StatefulWidget {
  const FeaturedOffersPage({Key? key}) : super(key: key);

  @override
  _FeaturedOffersPageState createState() => _FeaturedOffersPageState();
}

class _FeaturedOffersPageState extends State<FeaturedOffersPage> with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  List<api.VwFeaturedOffer> featuredOffers = [];
  List<api.VwFeaturedOffer> featuredOffersGlobal = [];
  List<api.VwFeaturedOffer> featuredOffersExclusive = [];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _fetchData();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  void _fetchData() async {
    featuredOffers = (await api.VwFeaturedOfferApi(MyApp.sessionApiClient).vwFeaturedOfferGet()) ?? [];
    featuredOffersGlobal = featuredOffers.where((element) => element.isGlobal == true).toList();
    featuredOffersExclusive = featuredOffers.where((element) => element.isGlobal == false).toList();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text(t.featuredOffers),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          TabBar(
            controller: _tabController,
            tabs: [
              Tab(text: t.global),
              Tab(text: t.exclusive),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                _FeaturedOffersGrid(featuredOffers: featuredOffersGlobal),
                _FeaturedOffersGrid(featuredOffers: featuredOffersExclusive),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _FeaturedOffersGrid extends StatelessWidget {
  const _FeaturedOffersGrid({required this.featuredOffers});
  final List<api.VwFeaturedOffer> featuredOffers;
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(20),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: 150,
        crossAxisSpacing: 20,
        mainAxisSpacing: 10,
      ),
      children: [
        ...featuredOffers.map((offer) {
          return FeaturedOfferCardView(featuredOffer: offer);
        }),
      ],
    );
  }
}
