import 'package:flutter/material.dart';
import 'package:poc_frontend/api/lib/api.dart' as api;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class FeaturedOfferCardView extends StatefulWidget {
  const FeaturedOfferCardView({
    Key? key,
    required this.featuredOffer,
  }) : super(key: key);

  final api.FeaturedOffer featuredOffer;

  @override
  State<FeaturedOfferCardView> createState() => _FeaturedOfferCardViewState();
}

class _FeaturedOfferCardViewState extends State<FeaturedOfferCardView> {
  api.Establishment? establishment;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  void fetchData() async {
    establishment = (await api.EstablishmentApi().establishmentGet(id:"eq.${widget.featuredOffer.establishmentId?.toString()}"))?.firstOrNull;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Column(
        children: [
          Image.network(
            "${widget.featuredOffer.imageUrl}",
            height: 80,
            width: double.infinity,
            fit: BoxFit.cover,
            loadingBuilder: (context, child, loadingProgress) => loadingProgress == null ? child : CircularProgressIndicator(),
            errorBuilder: (context, error, stackTrace) => Placeholder(fallbackHeight: 80, fallbackWidth: double.infinity),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            width: double.infinity,
            height: 70,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.featuredOffer.title ?? '', style: const TextStyle(fontSize: 12, color: Colors.black)),
                Text(establishment?.address ?? '', style: const TextStyle(fontSize: 10, color: Colors.grey)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
