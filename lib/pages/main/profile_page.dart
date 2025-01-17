import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:poc_frontend/components/app_bar.dart';
import 'package:poc_frontend/components/establishment_card_view.dart';
import 'package:poc_frontend/components/icon_button_label.dart';
import 'package:poc_frontend/components/rating.dart';
import 'package:poc_frontend/components/textbutton_no_background.dart';
import 'package:poc_frontend/components/textbutton_secondary.dart';
import 'package:poc_frontend/components/user_membership_card.dart';
import 'package:poc_frontend/main.dart';
import 'package:poc_frontend/pages/establishment_profile_page.dart';
import 'package:poc_frontend/pages/login_page.dart';
import 'package:poc_frontend/api/lib/api.dart' as api;
import 'package:http/src/client.dart';
import 'package:poc_frontend/pages/my_exclusive_benefit_page.dart';
import 'package:poc_frontend/pages/my_voucher_page.dart';
import 'package:poc_frontend/pages/review_page.dart';
import 'package:poc_frontend/pages/stored_liqueur_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});
  static String routeName = '/profile';
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  api.User? user;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (MyApp.prefs!.getString('loginSessionToken') == null) {
        Navigator.pushNamed(context, LoginPage.routeName);
        return;
      } else {
        fetchUser();
      }
    });
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  void fetchUser() async {
    try {
      final users = await api.UserApi(MyApp.sessionApiClient).userGet();
      user = users!.firstOrNull;
      if (mounted) {
        setState(() {});
      }
    } on api.ApiException catch (e) {
      apiErrorHandler(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    if (user == null) {
      return Scaffold(
        appBar: MainAppBar(
          title: '${t.loading}...',
        ),
        body: Center(
          child: SizedBox(
            width: 100,
            height: 100,
            child: CircularProgressIndicator(
              backgroundColor: Colors.white,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.grey),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: MainAppBar(
        title: user!.name ?? '',
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButtonNoBackground(
                        onPressed: () {},
                        text: '${user!.followerCount}\n${t.follower('s')}',
                      ),
                      TextButtonNoBackground(
                        onPressed: () {},
                        text: '${user!.followingCount}\n${t.following}',
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: TextButtonSecondary(onPressed: () {}, text: t.edit),
                      ),
                    ],
                  ),
                  _Description(description: user?.description ?? ''),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  UserMembershipCard(user: user!),
                  SizedBox(height: 10),
                  Text(t.earnPointsToRenewMembershipDesc('${user?.points!}', user?.pointsExpiry.substring(0, 10) ?? '', '3000')),
                  SizedBox(height: 10),
                  LinearProgressIndicator(
                    value: user!.points! / 3000,
                    minHeight: 7,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  SizedBox(height: 10),
                  Text(t.membershipRemainingDays(
                    user!.pointsExpiry.substring(0, 10),
                    DateTime.parse(user!.pointsExpiry).difference(DateTime.now()).inDays,
                    (3000 - user!.points!).toString(),
                  )),
                  Text(t.learnMore),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LabeledIconButton(
                        size: 50,
                        assetImagePath: 'assets/images/icon_menu_voucher.png',
                        label: t.voucher('s'),
                        onPressed: () => Navigator.pushNamed(context, MyVoucherPage.routeName, arguments: user!),
                      ),
                      LabeledIconButton(
                        assetImagePath: 'assets/images/icon_menu_booking.png',
                        label: t.booking('s'),
                        onPressed: () {},
                      ),
                      LabeledIconButton(
                        assetImagePath: 'assets/images/icon_menu_benefit.png',
                        label: t.exclusiveBenefit,
                        onPressed: () => Navigator.pushNamed(context, MyExclusiveBenefitPage.routeName, arguments: user!),
                      ),
                      LabeledIconButton(
                        assetImagePath: 'assets/images/icon_menu_store.png',
                        label: t.storedLiqueur('s'),
                        onPressed: () => Navigator.pushNamed(context, StoredLiqueurPage.routeName, arguments: user!),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Column(
                    children: [
                      TabBar(
                        tabs: [
                          Tab(text: t.overview),
                          Tab(text: t.bookmark('s')),
                          Tab(text: t.review('s')),
                          Tab(text: t.photo('s')),
                        ],
                        controller: _tabController,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 500,
              child: TabBarView(
                controller: _tabController,
                children: [
                  _Overview(user: user),
                  _Bookmarks(),
                  _Reviews(),
                  _Photos(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _Description extends StatelessWidget {
  final String description;
  const _Description({required this.description});
  @override
  Widget build(BuildContext context) {
    return Text(description);
  }
}

class _Reviews extends StatefulWidget {
  const _Reviews();
  @override
  State<_Reviews> createState() => _ReviewsState();
}

class _ReviewsState extends State<_Reviews> {
  List<api.Review> reviews = [];
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  void fetchData() async {
    reviews = (await api.ReviewApi(MyApp.sessionApiClient).reviewGet())!;
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return _ReviewComponent(review: reviews[index]);
      },
      separatorBuilder: (context, index) {
        return SizedBox(
          height: 20,
        );
      },
      itemCount: reviews.length,
    );
  }
}

class _ReviewComponent extends StatefulWidget {
  const _ReviewComponent({required this.review});
  final api.Review review;

  @override
  State<_ReviewComponent> createState() => _ReviewComponentState();
}

class _ReviewComponentState extends State<_ReviewComponent> {
  List<api.ReviewImage> images = [];
  String? establishment;
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  void fetchData() async {
    try {
      images = (await api.ReviewImageApi(MyApp.sessionApiClient).reviewImageGet(reviewId: 'eq.${widget.review.id}'))!;
      establishment = (await api.EstablishmentApi().establishmentGet(id: 'eq.${widget.review.establishmentId}'))?.firstOrNull?.name ?? '';
      if (mounted) {
        setState(() {});
      }
    } on api.ApiException catch (e) {
      apiErrorHandler(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, ReviewPage.routeName, arguments: widget.review);
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).shadowColor.withAlpha(50),
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [Text(widget.review.description ?? ''), Rating(rating: widget.review.rating!)],
            ),
            Text(widget.review.description ?? ''),
            SizedBox(height: 10),
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: images.map((image) {
                  return Image.network(
                    image.imageUrl!,
                    width: 100,
                    height: 100,
                  );
                }).toList(),
              ),
            ),
            SizedBox(height: 10),
            //date
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(establishment ?? ''),
                Text(widget.review.createdAt.substring(0, 10)),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _BookmarkComponent extends StatefulWidget {
  const _BookmarkComponent({required this.bookmark});

  final api.UserEstablishmentBookmark? bookmark;

  @override
  State<_BookmarkComponent> createState() => _BookmarkComponentState();
}

class _BookmarkComponentState extends State<_BookmarkComponent> {
  api.Establishment? establishment;
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  void fetchData() async {
    establishment = (await api.EstablishmentApi().establishmentGet(id: 'eq.${widget.bookmark?.establishmentId}'))!.firstOrNull;
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(establishment?.name ?? ''),
      subtitle: Text(establishment?.description ?? ''),
      leading: CachedNetworkImage(
        imageUrl: establishment?.thumbnailUrl ?? '',
        width: 50,
        height: 50,
        errorWidget: (context, url, error) => Icon(Icons.error),
      ),
      trailing: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios_sharp)),
      onTap: () {
        Navigator.pushNamed(context, EstablishmentProfilePage.routeName, arguments: establishment);
      },
    );
  }
}

class _Bookmarks extends StatefulWidget {
  const _Bookmarks();
  @override
  State<_Bookmarks> createState() => _BookmarksState();
}

class _BookmarksState extends State<_Bookmarks> {
  List<api.UserEstablishmentBookmark> bookmarks = [];
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  void fetchData() async {
    bookmarks = (await api.UserEstablishmentBookmarkApi(MyApp.sessionApiClient).userEstablishmentBookmarkGet())!;
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return _BookmarkComponent(bookmark: bookmarks[index]);
      },
      separatorBuilder: (context, index) {
        return SizedBox(
          height: 20,
        );
      },
      itemCount: bookmarks.length,
    );
  }
}

class _Overview extends StatefulWidget {
  const _Overview({required this.user});
  final api.User? user;
  @override
  State<_Overview> createState() => _OverviewState();
}

class _OverviewState extends State<_Overview> {
  api.UserEstablishmentBookmark? bookmark;

  api.Review? review;
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  void fetchData() async {
    final bookmarks = await api.UserEstablishmentBookmarkApi(MyApp.sessionApiClient).userEstablishmentBookmarkGet(order: 'created_at.desc', limit: '1');
    final reviews = await api.ReviewApi(MyApp.sessionApiClient).reviewGet(order: 'created_at.desc', limit: '1');

    if (bookmarks!.isEmpty || reviews!.isEmpty) {
      return;
    }

    bookmark = bookmarks.firstOrNull;
    review = reviews.firstOrNull;

    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(t.publishedAReview),
            Text(bookmark?.createdAt.substring(0, 10) ?? ''),
          ],
        ),
        if (review != null) _ReviewComponent(review: review!),
        if (bookmark != null)
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(t.bookmarkedItems(widget.user?.bookmarkCount ?? 0)),
                  Text(bookmark?.createdAt.substring(0, 10) ?? ''),
                ],
              ),
              _BookmarkComponent(bookmark: bookmark),
              TextButtonNoBackground(text: t.viewAll, onPressed: () {}),
            ],
          )
      ],
    );
  }
}

class _Photos extends StatefulWidget {
  const _Photos();
  @override
  State<_Photos> createState() => _PhotosState();
}

class _PhotosState extends State<_Photos> {
  List<api.ReviewImage> images = [];
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  void fetchData() async {
    images = (await api.ReviewImageApi(MyApp.sessionApiClient).reviewImageGet())!;
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        return Image.network(
          images[index].imageUrl!,
          fit: BoxFit.cover,
        );
      },
      itemCount: images.length,
    );
  }
}
