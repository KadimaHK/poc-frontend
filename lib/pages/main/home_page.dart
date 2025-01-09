import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:poc_frontend/api/lib/api.dart' as api;
import 'package:poc_frontend/components/app_bar.dart';
import 'package:poc_frontend/components/featured_card_view.dart';
import 'package:poc_frontend/components/featured_offer_card_view.dart';
import 'package:poc_frontend/components/pick_card_view.dart';
import 'package:poc_frontend/components/search_bar.dart';
import 'package:poc_frontend/components/icon_button_label.dart';
import 'package:poc_frontend/pages/featured_offers_page.dart';
import 'package:poc_frontend/pages/featured_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static const routeName = '/home';
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController searchController = TextEditingController();
  List<api.Pick> picks = [];
  List<api.Featured> featured = [];
  List<api.FeaturedOffer> featuredOffers = [];

  @override
  void initState() {
    fetchData();
    super.initState();
  }

  Future<void> fetchData() async {
    picks = await api.PickApi().pickGet() ?? [];
    featured = await api.FeaturedApi().featuredGet(limit: '4') ?? [];
    featuredOffers = await api.FeaturedOfferApi().featuredOfferGet(limit: '8') ?? [];
    if(mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: MainAppBar(title: t.home,),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: MainSearchBar(),
          ),
          Expanded(
            child: ListView(
              children: [
                // Picks
                ListTile(
                  title: Text(t.pick),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  height: 150,
                  child: ListView.separated(
                    itemBuilder: (context, index) => PickCardView(pick: picks[index]),
                    separatorBuilder: (context, index) => const SizedBox(width: 10),
                    itemCount: picks.length,
                    scrollDirection: Axis.horizontal,
                  ),
                ),

                // Buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    LabeledIconButton(
                      assetImagePath: 'assets/images/icon_menu_compass.png',
                      label: t.nearby,
                      onPressed: () => {},
                    ),
                    LabeledIconButton(
                      assetImagePath: 'assets/images/icon_menu_booking.png',
                      label: t.booking('s'),
                      onPressed: () => {},
                    ),
                    LabeledIconButton(
                      assetImagePath: 'assets/images/icon_menu_benefit.png',
                      label: t.benefit(''),
                      onPressed: () => {},
                    ),
                    LabeledIconButton(
                      assetImagePath: 'assets/images/icon_menu_store.png',
                      label: t.storedLiqueur('s'),
                      onPressed: () => {},
                    ),
                  ],
                ),

                ListTile(
                  title: Text(t.featured),
                  trailing: Icon(Icons.arrow_forward_ios, size: 10),
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => FeaturedPage())),
                ),
                // Featured

                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  height: 300,
                  child: GridView(
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisExtent: 150, crossAxisSpacing: 10, mainAxisSpacing: 10),
                    children: [
                      ...featured.map((f) => FeaturedCardView(featured: f)).toList(),
                    ],
                  ),
                ),

                // Featured Offers
                ListTile(
                  title: Text(t.featuredOffer('s')),
                  trailing: Icon(Icons.arrow_forward_ios, size: 10),
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => FeaturedOffersPage())),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  height: 150,
                  child: ListView.separated(
                    itemBuilder: (context, index) => SizedBox(
                      width: 150,
                      child: FeaturedOfferCardView(featuredOffer: featuredOffers[index]),
                    ),
                    separatorBuilder: (context, index) => const SizedBox(width: 10),
                    itemCount: featuredOffers.length,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
