import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:poc_frontend/api/lib/api.dart' as api;
import 'package:poc_frontend/components/establishment_info_card_view.dart';
import 'package:poc_frontend/components/featured_offer_card_view.dart';
import 'package:poc_frontend/components/search_bar.dart';
import 'package:poc_frontend/components/textbutton_secondary.dart';
import 'package:poc_frontend/consts.dart';
import 'package:poc_frontend/pages/featured_offer_detail_page.dart';

class MyExclusiveBenefitPage extends StatefulWidget {
  const MyExclusiveBenefitPage({super.key, required this.user});
  final api.User user;
  static const routeName = '/my_exclusive_benefit';

  @override
  State<MyExclusiveBenefitPage> createState() => _MyExclusiveBenefitPageState();
}

class _MyExclusiveBenefitPageState extends State<MyExclusiveBenefitPage> {
  List<api.FeaturedOffer>? benefits;
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  void fetchData() async {
    benefits = (await api.FeaturedOfferApi().featuredOfferGet())!;
    if(mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        title: Text(AppLocalizations.of(context)!.myExclusiveBenefit),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 120,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(color: Colors.black),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      t.myExclusiveBenefit,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text(
                      widget.user.name ?? '',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: MainSearchBar(),
          ),
          Divider(height: 30),
          SizedBox(
            height: 40,
            child: Row(
              children: [
                Padding(padding: EdgeInsets.symmetric(horizontal: 10), child: Icon(Icons.filter_alt_outlined)),
                Expanded(
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: Filters.values.length,
                    itemBuilder: (context, index) => RawChip(
                      label: Text(t.filters(Filters.values[index].toString())),
                      avatar: Icon(
                        Icons.arrow_drop_down,
                      ),
                      onPressed: () => {},
                    ),
                    separatorBuilder: (context, index) {
                      return SizedBox(width: 10);
                    },
                  ),
                ),
              ],
            ),
          ),
          Divider(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(t.myExclusiveBenefit),
              Text(t.result(benefits?.length ?? 0)),
            ],
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) => ExclusiveBenefitCardLarge(benefit: benefits![index]),
                separatorBuilder: (context, index) => const SizedBox(height: 10),
                itemCount: benefits?.length ?? 0),
          ),
        ],
      ),
    );
  }
}

class ExclusiveBenefitCardLarge extends StatefulWidget {
  const ExclusiveBenefitCardLarge({super.key, required this.benefit});
  final api.FeaturedOffer benefit;

  @override
  State<ExclusiveBenefitCardLarge> createState() => _ExclusiveBenefitCardLargeState();
}

class _ExclusiveBenefitCardLargeState extends State<ExclusiveBenefitCardLarge> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Card(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.loyalty),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    widget.benefit.title ?? '',
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.start,
                  ),
                ),
                Card(
                  color: Colors.green,
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(t.newWord.toUpperCase()),
                  ),
                ),
              ],
            ),
            Text(t.expiryOn(widget.benefit.expiryDate ?? '')),
            SizedBox(height: 10),
            FutureBuilder(
              future: Future.wait(
                [
                  api.EstablishmentApi().establishmentGet(id: 'eq.${widget.benefit.establishmentId}'),
                  api.EstablishmentImageApi().establishmentImageGet(establishmentId: 'eq.${widget.benefit.establishmentId}'),
                ],
              ),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                }
                if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                }
                final establishment = ((snapshot.data as List)[0] as List<api.Establishment>).firstOrNull;
                final establishmentImages = (snapshot.data as List)[1] as List<api.EstablishmentImage>;
                return EstablishmentInfoRow(establishment: establishment, establishmentImages: establishmentImages);
              },
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              
              children: [
                Expanded(
                  child: OutlinedButton(
                  onPressed: () {Navigator.pushNamed(context, FeaturedOfferDetailPage.routeName, arguments: widget.benefit);},
                  child: Text(t.viewDetails),
                ),
                ),Expanded(
                  child: TextButton(onPressed: (){}, child: Text(t.redeemNow)),
                ),
               
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// only for testing

api.FeaturedOffer dummyBenefit = api.FeaturedOffer(
  id: 1,
  title: 'dummy title',
  description: 'dummy description',
  imageUrl: 'https://dummyimage.com/600x400/000/fff',
  establishmentId: 1,
);
