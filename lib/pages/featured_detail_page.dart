import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:poc_frontend/api/lib/api.dart' as api;
import 'package:poc_frontend/components/establishment_info_card_view.dart';

class FeaturedDetailPage extends StatefulWidget {
  const FeaturedDetailPage({super.key, required this.featured});
  // static const routeName = '/featured_detail';
  final api.VwFeatured featured;
  @override
  State<FeaturedDetailPage> createState() => _FeaturedDetailPageState();
}

class _FeaturedDetailPageState extends State<FeaturedDetailPage> {
  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(t.featured),
      ),
      body: ListView(
        children: [
          Image.network(
            "${widget.featured.baseUrl}${widget.featured.fileName}",
            height: 200,
            fit: BoxFit.cover,
            loadingBuilder: (context, child, loadingProgress) => loadingProgress == null ? child : CircularProgressIndicator(),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.featured.title ?? '', style: const TextStyle(fontSize: 20, color: Colors.black)),
                Text(widget.featured.description ?? '', style: const TextStyle(fontSize: 15, color: Colors.black)),
              ],
            ),
          ),
          ListTile(
            title: Text(t.restaurantInfo),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: EstablishmentInfoCardView(establishmentId: widget.featured.establishmentId),
          ),
        ],
      ),
    );
  }
}
