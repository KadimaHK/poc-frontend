import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:poc_frontend/api/lib/api.dart' as api;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:poc_frontend/pages/establishment_profile_page.dart';

class EstablishmentInfoCardView extends StatefulWidget {
  const EstablishmentInfoCardView({
    super.key,
    required this.establishmentId,
  });

  final int? establishmentId;

  @override
  State<EstablishmentInfoCardView> createState() => _EstablishmentInfoCardViewState();
}

class _EstablishmentInfoCardViewState extends State<EstablishmentInfoCardView> {
  api.Establishment? establishment;
  List<api.EstablishmentImage>? establishmentImages = [];
  @override
  void initState() {
    fetchData();
    super.initState();
  }

  void fetchData() async {
    establishment = (await api.EstablishmentApi().establishmentGet(id: "eq.${widget.establishmentId?.toString()}"))?.firstOrNull;
    establishmentImages = await api.EstablishmentImageApi().establishmentImageGet(establishmentId: "eq.${widget.establishmentId?.toString()}");
    if(mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    if (establishment == null || establishmentImages == null) {
      return CircularProgressIndicator();
    }
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Stack(
        fit: StackFit.passthrough,
        children: [
          Container(
            width: 400,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //title
                Text(establishment!.name ?? '', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),

                EstablishmentInfoRow(establishment: establishment, establishmentImages: establishmentImages),
                SizedBox(height: 10),
                SizedBox(
                  height: 100,
                  child: EstablishmentFeaturedOfferView(establishmentId: widget.establishmentId),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Image.asset("assets/images/icon_menu_booking.png", height: 50, width: 50),
                    SizedBox(width: 10),
                    Text("${t.earn} "),
                    SvgPicture.asset(
                      "assets/images/logo.svg",
                      width: Theme.of(context).textTheme.bodyMedium?.fontSize,
                      height: Theme.of(context).textTheme.bodyMedium?.fontSize,
                    ),
                    Text(" ${establishment!.bookingPoints}"),
                    Text(" ${t.pointsPerSeat}"),
                    Spacer(),
                    TextButton(onPressed: () => {}, child: Text(t.booking)),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            right: 15,
            top: 15,
            child: Column(
              children: [Icon(Icons.bookmark_border, color: Colors.white), Text("1234")],
            ),
          ),
        ],
      ),
    );
  }
}

class EstablishmentInfoRow extends StatelessWidget {
  const EstablishmentInfoRow({
    super.key,
    required this.establishment,
    required this.establishmentImages,
  });

  final api.Establishment? establishment;
  final List<api.EstablishmentImage>? establishmentImages;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            "${establishment!.thumbnailUrl}",
            height: 140,
            width: 150,
            fit: BoxFit.cover,
            loadingBuilder: (context, child, loadingProgress) => loadingProgress == null ? child : CircularProgressIndicator(),
            errorBuilder: (context, error, stackTrace) => Placeholder(fallbackHeight: 140, fallbackWidth: 150),
          ),
        ),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('${establishment!.address} ・ ${1234}km', style: const TextStyle(fontSize: 15)),
            Text('${establishment!.category}', style: const TextStyle(fontSize: 15)),
            Text('★ ${establishment!.rank}', style: const TextStyle(fontSize: 15)),
            SizedBox(
              height: 60,
              width: 200,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: establishmentImages!.length,
                separatorBuilder: (context, index) => const SizedBox(width: 10),
                itemBuilder: (context, index) {
                  return Image.network(
                    "${establishmentImages![index].imageUrl}",
                    height: 50,
                    width: 100,
                    fit: BoxFit.cover,
                    loadingBuilder: (context, child, loadingProgress) => loadingProgress == null ? child : CircularProgressIndicator(),
                    errorBuilder: (context, error, stackTrace) => Placeholder(fallbackHeight: 50, fallbackWidth: 100),
                  );
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class EstablishmentFeaturedOfferView extends StatefulWidget {
  const EstablishmentFeaturedOfferView({
    super.key,
    required this.establishmentId,
  });

  final int? establishmentId;

  @override
  State<EstablishmentFeaturedOfferView> createState() => _EstablishmentFeaturedOfferViewState();
}

class _EstablishmentFeaturedOfferViewState extends State<EstablishmentFeaturedOfferView> {
  List<api.FeaturedOffer>? featuredOffers;
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  void fetchData() async {
    featuredOffers = await api.FeaturedOfferApi().featuredOfferGet(establishmentId: "eq.${widget.establishmentId?.toString()}");
    if(mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    if (featuredOffers == null) {
      return CircularProgressIndicator();
    }
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: featuredOffers!.length,
      separatorBuilder: (context, index) => const SizedBox(width: 10),
      itemBuilder: (context, index) {
        return BenefitCard(benefit: featuredOffers![index]);
      },
    );
  }
}
