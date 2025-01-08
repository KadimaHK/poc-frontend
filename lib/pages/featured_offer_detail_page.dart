import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:poc_frontend/api/lib/api.dart' as api;
import 'package:poc_frontend/components/establishment_info_card_view.dart';

class FeaturedOfferDetailPage extends StatefulWidget {
  const FeaturedOfferDetailPage({super.key, required this.featuredOffer});
  static const routeName = '/featured_offer_detail';
  final api.FeaturedOffer featuredOffer;
  @override
  State<FeaturedOfferDetailPage> createState() => _FeaturedOfferDetailPageState();
}

class _FeaturedOfferDetailPageState extends State<FeaturedOfferDetailPage> {
  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return ListView(
      children: [
        Stack(
          children: [
            Image.network(
              '${widget.featuredOffer.imageUrl}',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
              loadingBuilder: (context, child, loadingProgress) => loadingProgress == null ? child : CircularProgressIndicator(),
              errorBuilder: (context, error, stackTrace) => Placeholder(fallbackHeight: 200),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BackButton(),
                IconButton(
                  icon: const Icon(Icons.share),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Text(widget.featuredOffer.title!, style: Theme.of(context).textTheme.headlineLarge, textAlign: TextAlign.center),
        ),
        ListTile(
          title: Text(t.restaurantInfo),
        ),

        Divider(),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.location_on_outlined),
                Text(widget.featuredOffer.establishmentId.toString()),
                IconButton(onPressed: (){}, icon: Icon(Icons.directions)),
              ],
            ),
            // "buy and use now"
            ElevatedButton(
              onPressed: (){},
              child: Text(t.buyAndUseNow),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.calendar_today),
                Text(t.expiryDate),
                Text('${widget.featuredOffer.startDate} - ${widget.featuredOffer.expiryDate}'),
              ],
            )
            
          ],
        ),
        Divider(),       
        Text(t.description),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Text(widget.featuredOffer.description!, style: Theme.of(context).textTheme.bodyMedium),
        ),
        Text(t.establishmentInfo),

        
        
        Container(
          margin: EdgeInsets.all(10),
          child: EstablishmentInfoCardView(establishmentId: widget.featuredOffer.establishmentId),
        ),
      ],
    );
  }
}
