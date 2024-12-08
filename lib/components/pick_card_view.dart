import 'package:flutter/material.dart';
import 'package:poc_frontend/api/lib/api.dart' as api;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PickCardView extends StatefulWidget {
  const PickCardView({
    Key? key,
    required this.pick,
  }) : super(key: key);

  final api.Pick pick;

  @override
  State<PickCardView> createState() => _PickCardViewState();
}

class _PickCardViewState extends State<PickCardView> {
  static const width = 200.0;
  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    DateTime expiry = DateTime.parse(widget.pick.expiry ?? '');
    int daysLeft = expiry.difference(DateTime.now()).inDays;
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Column(
        children: [
          Image.network(
            "${widget.pick.imageUrl}",
            height: 100,
            width: width,
            fit: BoxFit.cover,
            loadingBuilder: (context, child, loadingProgress) => loadingProgress == null ? child : CircularProgressIndicator(),
                      errorBuilder: (context, error, stackTrace) => Placeholder(fallbackHeight: 100, fallbackWidth: width),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            width: width,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.pick.message ?? '', style: const TextStyle(fontSize: 12, color: Colors.black)),
                Text(
                  "${daysLeft} ${daysLeft <= 1 ? t.dayLeft : t.daysLeft}",
                  style: const TextStyle(fontSize: 8, color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
