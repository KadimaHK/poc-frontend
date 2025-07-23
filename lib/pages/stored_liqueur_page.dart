import 'dart:developer';
import 'dart:math';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:poc_frontend/l10n/app_localizations.dart';
import 'package:poc_frontend/api/lib/api.dart' as api;
import 'package:poc_frontend/components/status_tag.dart';
import 'package:poc_frontend/consts.dart';
import 'package:poc_frontend/main.dart';
import 'package:poc_frontend/pages/stored_liqueur_detail_page.dart';

class StoredLiqueurPage extends StatefulWidget {
  const StoredLiqueurPage({super.key, required this.user});
  final api.User user;
  static const routeName = '/stored_liqueur';

  @override
  State<StoredLiqueurPage> createState() => _StoredLiqueurPageState();
}

class _StoredLiqueurPageState extends State<StoredLiqueurPage> with SingleTickerProviderStateMixin {
  List<_StoredLiqueurWidget> stored = [];
  List<_StoredLiqueurWidget> done = [];
  List<_StoredLiqueurWidget> transferred = [];

  TabController? _tabController;
  @override
  void initState() {
    super.initState();
    fetchData();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }

  void fetchData() async {
    {
      List<api.StoredLiqueur>? storedLiqueur = (await api.StoredLiqueurApi(MyApp.sessionApiClient).storedLiqueurGet(userId: 'eq.${widget.user.id}'))!;
      for (var item in storedLiqueur) {
        final bool isRedeemed = item.isRedeemed!;
        final bool isExpired = DateTime.parse(item.expiryDate!).isBefore(DateTime.now());
        _StoredLiqueurWidget tmp = _StoredLiqueurWidget(
          item: item,
        );
        if (isRedeemed) {
          tmp.status = Status.redeemed;
          done.add(tmp);
        } else if (isExpired) {
          tmp.status = Status.expired;
          done.add(tmp);
        } else {
          stored.add(tmp);
        }
      }
    }

    {
      List<api.StoredLiqueurTransfer>? transferredLiqueur = (await api.StoredLiqueurTransferApi(MyApp.sessionApiClient).storedLiqueurTransferGet(fromUserId: 'eq.${widget.user.id}'))!;
      for (var item in transferredLiqueur) {
        api.StoredLiqueur storedLiqueur = (await api.StoredLiqueurApi(MyApp.sessionApiClient).storedLiqueurGet(id: 'eq.${item.storedLiqueurId}'))!.first;
        transferred.add(_StoredLiqueurWidget(
          item: storedLiqueur,
          status: item.isAccepted! ? Status.transferred : Status.pending,
        ));
      }
    }
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        title: Text(t.storedLiqueur('s')),
      ),
      body: Column(
        children: [
          TabBar(
            controller: _tabController,
            tabs: [
              Tab(text: t.storedLiqueur('s')),
              Tab(text: "${t.redeemed}/${t.expired}"),
              Tab(text: t.transferred),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                ListView.separated(
                  itemBuilder: (context, index) {
                    return stored[index];
                  },
                  separatorBuilder: (context, index) => const SizedBox(height: 10),
                  itemCount: stored.length,
                ),
                ListView.separated(
                  itemBuilder: (context, index) {
                    return done[index];
                  },
                  separatorBuilder: (context, index) => const SizedBox(height: 10),
                  itemCount: done.length,
                ),
                ListView.separated(
                  itemBuilder: (context, index) {
                    return transferred[index];
                  },
                  separatorBuilder: (context, index) => const SizedBox(height: 10),
                  itemCount: transferred.length,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _StoredLiqueurWidget extends StatelessWidget {
  _StoredLiqueurWidget({required this.item, this.status = Status.none});
  final api.StoredLiqueur item;
  Status status = Status.none;
  static const double size = 50;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Navigator.pushNamed(context, StoredLiqueurDetailPage.routeName, arguments: item),
      leading: SizedBox(
        width: size * 1.5,
        height: size * 1.5,
        child: Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: CachedNetworkImage(
                imageUrl: item.imageUrl ?? '',
                width: size,
                height: size,
                errorWidget: (context, url, error) => Placeholder(),
                placeholder: (context, url) => CircularProgressIndicator(),
                fit: BoxFit.cover,
              ),
            ),
            Positioned(bottom: 0, child: StatusTag(status: status, fontSize: 8)),
          ],
        ),
      ),
      title: Row(
        children: [
          Text(item.name ?? ''),
        ],
      ),
      subtitle: Text(item.description ?? ''),
      trailing: Icon(Icons.chevron_right_outlined),
    );
  }
}
