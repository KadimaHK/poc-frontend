import 'package:flutter/material.dart';
import 'package:poc_frontend/api/lib/api.dart' as api;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:poc_frontend/pages/featured_detail_page.dart';

class FeaturedCardView extends StatefulWidget {
  const FeaturedCardView({
    Key? key,
    required this.featured,
  }) : super(key: key);

  final api.VwFeatured featured;

  @override
  State<FeaturedCardView> createState() => _FeaturedCardViewState();
}

class _FeaturedCardViewState extends State<FeaturedCardView> {
  static const width = 180.0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/featured_detail', arguments: widget.featured);
      },
      
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              "${widget.featured.baseUrl}${widget.featured.fileName}",
              height: 100,
              width: width,
              fit: BoxFit.cover,
              loadingBuilder: (context, child, loadingProgress) => loadingProgress == null ? child : CircularProgressIndicator(),
                      errorBuilder: (context, error, stackTrace) => Placeholder(fallbackHeight: 100, fallbackWidth: width),
            ),
          ),
          Text(widget.featured.title ?? '', style: const TextStyle(fontSize: 12)),
        ],
      ),


    );
  }
}
