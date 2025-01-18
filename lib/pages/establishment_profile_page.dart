import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';
import 'package:poc_frontend/api/lib/api.dart' as api;
import 'package:poc_frontend/components/rating.dart';
import 'package:poc_frontend/pages/featured_detail_page.dart';
import 'package:poc_frontend/pages/featured_offer_detail_page.dart';
import 'package:url_launcher/url_launcher_string.dart';

class EstablishmentProfilePage extends StatefulWidget {
  const EstablishmentProfilePage({super.key, required this.establishment});
  static const String routeName = '/establishment_profile';
  final api.Establishment establishment;
  @override
  State<EstablishmentProfilePage> createState() => _EstablishmentProfilePageState();
}

class _EstablishmentProfilePageState extends State<EstablishmentProfilePage> {
  bool isOpening = false;
  api.EstablishmentOpeningHours? openingHours;
  List<api.FeaturedOffer> benefits = [];
  List<api.EstablishmentImage> images = [];
  List<api.Review> reviews = [];

  static const numOfReviews = 3;

  @override
  initState() {
    super.initState();
    fetchIsOpen();
    fetchBenefits();
    fetchImages();
    fetchReviews(numOfReviews);
  }

  void fetchReviews(int limit) async {
    reviews = (await api.ReviewApi().reviewGet(establishmentId: 'eq.${widget.establishment.id}', limit: limit.toString())) ?? [];
    if(mounted) {
      setState(() {});
    }
  }

  void fetchImages() async {
    images = (await api.EstablishmentImageApi().establishmentImageGet(establishmentId: 'eq.${widget.establishment.id}')) ?? [];
    if(mounted) {
      setState(() {});
    }
  }

  void fetchBenefits() async {
    benefits = (await api.FeaturedOfferApi().featuredOfferGet(establishmentId: 'eq.${widget.establishment.id}')) ?? [];
    if(mounted) {
      setState(() {});
    }
  }

  void fetchIsOpen() async {
    String day = DateFormat('EEEE').format(DateTime.now());
    final openingHoursRes = (await api.EstablishmentOpeningHoursApi().establishmentOpeningHoursGet(establishmentId: 'eq.${widget.establishment.id}', day: 'eq.${day.toLowerCase()}'));
    if (openingHoursRes == null || openingHoursRes.isEmpty) return;

    // time format "23:59:59"
    openingHours = openingHoursRes.firstOrNull;
    String currentTime = '${DateTime.now().hour}:${DateTime.now().minute}:${DateTime.now().second}';
    if (openingHours!.openTime!.compareTo(currentTime) <= 0 && openingHours!.closeTime!.compareTo(currentTime) >= 0) {
      isOpening = true;
    }

    if(mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return ListView(
      children: [
        Stack(
          children: [
            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.network(
                    width: double.infinity,
                    fit: BoxFit.cover,
                    widget.establishment.thumbnailUrl!,
                    errorBuilder: (context, error, stackTrace) => Placeholder(),
                  ).image,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BackButton(),
                  IconButton(onPressed: () => {}, icon: Icon(Icons.share_outlined)),
                ],
              ),
            ),
          ],
        ),

        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            spacing: 10,
            children: [
              Flexible(
                child: Image.network(
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                  widget.establishment.thumbnailUrl!,
                  errorBuilder: (context, error, stackTrace) => Placeholder(),
                ),
              ),
              Flexible(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.establishment.name ?? '', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    Text(widget.establishment.address ?? '', style: TextStyle(fontSize: 15)),
                    Text(widget.establishment.description ?? '', style: TextStyle(fontSize: 15)),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.yellow),
                        Text(widget.establishment.rank.toString(), style: TextStyle(fontSize: 15)),
                      ],
                    ),
                  ],
                ),
              ),
              Flexible(
                child: Column(
                  children: [
                    IconButton(onPressed: () => {}, icon: Icon(Icons.bookmark_border)),
                    Text(widget.establishment.bookmarkCount.toString()),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(padding: const EdgeInsets.all(20), child: Text(widget.establishment.description ?? '')),

        Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _EstablishmentIconButton(icon: Icons.qr_code_scanner, onPressed: () {}, label: t.order),
              _EstablishmentIconButton(icon: Icons.wine_bar_outlined, onPressed: () {}, label: t.menu),
              _EstablishmentIconButton(icon: Icons.table_bar_outlined, onPressed: () {}, label: t.booking('')),
              _EstablishmentIconButton(icon: Icons.phone_outlined, onPressed: () {}, label: t.contact),
            ],
          ),
        ),

        // // Opening Hours
        ListTile(
          key: Key('opening_hours'),
          title: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(isOpening ? t.open : t.closed, style: TextStyle(color: isOpening ? Colors.green : Colors.red, fontWeight: FontWeight.bold, fontSize: 15)),
                Text('・${openingHours?.openTime} - ${openingHours?.closeTime}', style: TextStyle(fontSize: 14)),
              ],
            ),
          ),
          trailing: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
          shape: Border(
            top: BorderSide(color: Colors.grey),
            bottom: BorderSide(color: Colors.grey),
          ),
        ),

        // Notice
        Column(
          children: [
            ListTile(
              title: Text(t.notice),
              trailing: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(widget.establishment.notice ?? ''),
            ),
          ],
        ),

        ListTile(
          title: Text(t.benefit('s')),
          trailing: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          height: 100,
          child: ListView.separated(
            itemBuilder: (context, index) => SizedBox(
              width: 300,
              child: BenefitCard(benefit: benefits[index]),
            ),
            separatorBuilder: (context, index) => const SizedBox(width: 10),
            itemCount: benefits.length,
            scrollDirection: Axis.horizontal,
          ),
        ),
        // Photos
        ListTile(
          title: Text(t.photo('s')),
          trailing: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          height: 100,
          child: ListView.separated(
            itemBuilder: (context, index) => SizedBox(
              width: 100,
              child: Image.network(
                width: 100,
                height: 100,
                fit: BoxFit.cover,
                images[index].imageUrl!,
                errorBuilder: (context, error, stackTrace) => Placeholder(),
              ),
            ),
            separatorBuilder: (context, index) => const SizedBox(width: 10),
            itemCount: images.length,
            scrollDirection: Axis.horizontal,
          ),
        ),

        // About
        ListTile(
          title: Text(t.about),
          trailing: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(Icons.location_on_outlined, color: Colors.white),
                  SizedBox(width: 5),
                  Text(widget.establishment.address ?? ''),
                  IconButton(onPressed: () => Clipboard.setData(ClipboardData(text: widget.establishment.address!)), icon: Icon(Icons.copy)),
                ],
              ),
              //phone
              Row(
                children: [
                  Icon(Icons.phone_outlined, color: Colors.white),
                  SizedBox(width: 5),
                  Text(widget.establishment.phone ?? ''),
                  IconButton(onPressed: () => launchUrlString('tel://${widget.establishment.phone}'), icon: Icon(Icons.call_made)),
                ],
              ),
              //website
              Row(
                children: [
                  Icon(Icons.language, color: Colors.white),
                  SizedBox(width: 5),
                  Text(widget.establishment.website ?? ''),
                  IconButton(onPressed: () => launchUrlString(widget.establishment.website!), icon: Icon(Icons.call_made)),
                ],
              ),
            ],
          ),
        ),
        // Ratings
        ListTile(
          title: Text(t.rating('s')),
          trailing: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
        ),
        Rating(rating: widget.establishment.rank!),
        ...reviews.map((review) => ListTile(
              title: Text(review.title ?? ''),
              subtitle: Row(
                children: [
                  Icon(Icons.star, color: Colors.yellow),
                  Text(review.description ?? ''),
                ],
              ),
            )),

        ListTile(
          title: Text(t.relatedNews),
          trailing: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
        ),
        ListTile(
          title: Text(t.suggestedBars),
          trailing: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
        ),
      ],
    );
  }
}

class _EstablishmentIconButton extends StatelessWidget {
  const _EstablishmentIconButton({required this.icon, required this.onPressed, required this.label});
  final IconData icon;
  final String label;
  final VoidCallback onPressed;
  final double size = 60;
  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).textButtonTheme.style?.backgroundColor?.resolve({}) ?? Colors.black;
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Container(
                width: size,
                height: size,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: color, width: size * .05),
                ),
                child: Icon(icon, size: size * .6, color: color),
              ),
              SizedBox(height: 5),
              Text(label, style: TextStyle(color: color)),
            ],
          ),
        ),
      ),
    );
  }
}

// TODO: is benefit card the same as featured offer card?
class BenefitCard extends StatelessWidget {
  const BenefitCard({super.key, required this.benefit});
  final api.FeaturedOffer benefit;

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return SizedBox(
        height: 100,
        width: 300,
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () => Navigator.of(context).pushNamed(FeaturedOfferDetailPage.routeName, arguments: benefit),
            child: Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Flexible(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          // benefit.thumbnailUrl!,
                          benefit.imageUrl!,
                          width: 100,
                          height: 60,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) => Placeholder(),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Flexible(
                      flex: 2,
                      child: Column(
                        children: [
                          Text(benefit.title ?? '', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
                          Text(benefit.description ?? '', style: TextStyle(color: Colors.black)),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Flexible(
                      child: TextButton(
                        onPressed: () {},
                        style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Colors.green)),
                        child: Text(t.buy, style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
