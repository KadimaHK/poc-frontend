import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:poc_frontend/components/app_bar.dart';
import 'package:poc_frontend/components/establishment_card_view.dart';
import 'package:poc_frontend/components/icon_button_label.dart';
import 'package:poc_frontend/components/textbutton_no_background.dart';
import 'package:poc_frontend/components/textbutton_secondary.dart';
import 'package:poc_frontend/components/user_membership_card.dart';
import 'package:poc_frontend/main.dart';
import 'package:poc_frontend/pages/establishment_profile_page.dart';
import 'package:poc_frontend/pages/login_page.dart';
import 'package:poc_frontend/api/lib/api.dart' as api;
import 'package:http/src/client.dart';
import 'package:poc_frontend/pages/review_page.dart';

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
      final user = users != null && users.isNotEmpty ? users[0] : null;
      setState(() {
        this.user = user;
      });
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
                        text: '${user!.followerCount}\n${t.followers}',
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
                  Text(t.earnPointsToRenewMembershipDesc('${user?.points!}', user?.pointsExpiry?.substring(0, 10) ?? '', '3000')),
                  SizedBox(height: 10),
                  LinearProgressIndicator(
                    value: user!.points! / 3000,
                    minHeight: 7,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  SizedBox(height: 10),
                  Text(t.membershipRemainingDays(
                    user!.pointsExpiry?.substring(0, 10) ?? '',
                    DateTime.parse(user!.pointsExpiry!).difference(DateTime.now()).inDays.toString(),
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
                        label: t.vouchers,
                        onPressed: () {},
                      ),
                      LabeledIconButton(
                        assetImagePath: 'assets/images/icon_menu_booking.png',
                        label: t.bookings,
                        onPressed: () {},
                      ),
                      LabeledIconButton(
                        assetImagePath: 'assets/images/icon_menu_benefit.png',
                        label: t.exclusiveBenefit,
                        onPressed: () {},
                      ),
                      LabeledIconButton(
                        assetImagePath: 'assets/images/icon_menu_store.png',
                        label: t.storedLiqueurs,
                        onPressed: () {},
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Column(
                    children: [
                      TabBar(
                        tabs: [
                          Tab(text: t.overview),
                          Tab(text: t.bookmarks),
                          Tab(text: t.reviews),
                          Tab(text: t.photos),
                        ],
                        controller: _tabController,
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 200,
              child: TabBarView(
                controller: _tabController,
                children: [
                  Text('Overview'),
                  _Bookmarks(),
                  _Reviews(),
                  Text('Photos'),
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
  const _Description({required this.description, super.key});
  @override
  Widget build(BuildContext context) {
    return Text(description);
  }
}

class _Reviews extends StatefulWidget {
  const _Reviews({super.key});
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
    final reviews = await api.ReviewApi(MyApp.sessionApiClient).reviewGet();
    setState(() {
      this.reviews = reviews!;
    });
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
  final api.Review review;
  const _ReviewComponent({required this.review, super.key});
  @override
  State<_ReviewComponent> createState() => _ReviewComponentState();
}

class _ReviewComponentState extends State<_ReviewComponent> {
  List<api.ReviewImage> images = [];

  // api.Establishment? establishment;
  String? establishment;
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  void fetchData() async {
    final images = await api.ReviewImageApi(MyApp.sessionApiClient).reviewImageGet(reviewId: 'eq.${widget.review.id}');
    final establishment = (await api.EstablishmentApi().establishmentGet(id: 'eq.${widget.review.establishmentId}'))?[0].name ?? '';
    setState(() {
      this.images = images!;
      this.establishment = establishment;
    });
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
              children: [
                Text(widget.review.title!),
                SizedBox(
                  width: 100,
                  child: LinearProgressIndicator(
                    value: widget.review.rating! / 5,
                    minHeight: 7,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ],
            ),
            Text(widget.review.description!),
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
  const _BookmarkComponent({super.key, required this.bookmark});

  final api.UserBookmark bookmark;

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
    final establishment = (await api.EstablishmentApi().establishmentGet(id: 'eq.${widget.bookmark.establishmentId}'))?[0];
    setState(() {
      this.establishment = establishment;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(establishment?.name ?? ''),
      subtitle: Text(establishment?.description ?? ''),
      leading: 
      
      CachedNetworkImage(
        imageUrl: establishment?.thumbnailUrl ?? '',
        width: 50,
        height: 50,
        errorWidget: (context, url, error) => Icon(Icons.error),
      ),
      trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_sharp)),
      onTap: () {
        Navigator.pushNamed(context, EstablishmentProfilePage.routeName, arguments: establishment);
      },
    );
  }
}

class _Bookmarks extends StatefulWidget {
  const _Bookmarks({super.key});
  @override
  State<_Bookmarks> createState() => _BookmarksState();
}

class _BookmarksState extends State<_Bookmarks> {
  List<api.UserBookmark> bookmarks = [];
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  void fetchData() async {
    final bookmarks = await api.UserBookmarkApi(MyApp.sessionApiClient).userBookmarkGet();
    setState(() {
      this.bookmarks = bookmarks!;
    });
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
