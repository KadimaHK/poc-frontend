import 'package:flutter/material.dart';
import 'package:poc_frontend/l10n/app_localizations.dart';
import 'package:poc_frontend/api/lib/api.dart' as api;
import 'package:poc_frontend/components/establishment_info_card_view.dart';

import 'dart:developer';

import 'package:poc_frontend/components/rating.dart';

class ReviewPage extends StatefulWidget {
  const ReviewPage({super.key, required this.review});
  static const routeName = '/review';
  final api.Review review;
  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  List<api.ReviewImage>? reviewImages = [];
  @override
  void initState() {
    super.initState();
    fetchReviewImages();
  }

  void fetchReviewImages() async {
    reviewImages = await api.ReviewImageApi().reviewImageGet(reviewId: 'eq.${widget.review.id}');
    if(mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(t.review('')),
        actions: [
          IconButton(
            icon: const Icon(Icons.share),
            onPressed: () {
              log('not implemented share');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Text(widget.review.title!, style: Theme.of(context).textTheme.headlineSmall),
                  SizedBox(height: 25),
                  Rating(rating: widget.review.rating!),
                ],
              ),
            ),
            Divider(height: 50),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Text(widget.review.content!),
                  ...reviewImages!
                      .map((reviewImage) => [
                            SizedBox(
                              height: 10,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(reviewImage.imageUrl!),
                            ),
                          ])
                      .expand((i) => i),
                  Text(t.theAboveReviewIsThePersonalOpinionOfAUserWhichDoesNotRepresentPOCsPointOfView),
                ],
              ),
            ),
            Divider(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(t.dateOfVisit),
                    Text(t.spendingPerHead),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.review.dateVisited!.substring(0, 10)),
                    Text('\$${widget.review.spend.toString()}'),
                  ],
                ),
              ],
            ),
            Divider(height: 50),
            Wrap(
              alignment: WrapAlignment.spaceEvenly,
              children: [
                _Rating(rating: widget.review.decorRating!, icon: Icons.wine_bar, label: t.decor),
                _Rating(rating: widget.review.serviceRating!, icon: Icons.room_service, label: t.service),
                _Rating(rating: widget.review.tasteRating!, icon: Icons.restaurant, label: t.taste),
                _Rating(rating: widget.review.valueRating!, icon: Icons.monetization_on, label: t.value),
                _Rating(rating: widget.review.hygieneRating!, icon: Icons.clean_hands, label: t.hygiene),
              ],
            ),
            Divider(height: 50),
            ListTile(
              leading: IconButton(onPressed: () {}, icon: Icon(Icons.thumb_up_alt_outlined)),
              title: Text(widget.review.likes.toString()),
              trailing: IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}

class _Rating extends StatefulWidget {
  const _Rating({super.key, required this.rating, required this.icon, required this.label});
  final num rating;
  final IconData icon;
  final String label;
  @override
  State<_Rating> createState() => _RatingState();
}

class _RatingState extends State<_Rating> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 125,
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Icon(widget.icon, size: 30),
            Text(widget.label),
            SizedBox(height: 10),
            Rating(rating: widget.rating),
          ],
        ),
      ),
    );
  }
}
