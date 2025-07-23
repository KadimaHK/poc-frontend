import 'dart:developer' as developer;
import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:poc_frontend/l10n/app_localizations.dart';
import 'package:poc_frontend/api/lib/api.dart' as api;
import 'package:poc_frontend/components/search_bar.dart';
import 'package:poc_frontend/components/textbutton_no_background.dart';
import 'package:poc_frontend/main.dart';

class StoredLiqueurTransferPage extends StatefulWidget {
  const StoredLiqueurTransferPage({super.key, required this.storedLiqueur});
  final api.StoredLiqueur storedLiqueur;
  static const routeName = '/stored_liqueur_transfer';

  @override
  State<StoredLiqueurTransferPage> createState() => _StoredLiqueurTransferPageState();
}

class _StoredLiqueurTransferPageState extends State<StoredLiqueurTransferPage> with SingleTickerProviderStateMixin {
  List<api.User>? users = [];
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  void fetchData() async {
    {
      List<api.Friend>? friends = (await api.FriendApi(MyApp.sessionApiClient).friendGet())!;
      for (api.Friend item in friends) {
        api.User user = (await api.UserApi().userGet(id: 'eq.${item.friendId}', select: 'id,uuid,name,icon_url'))!.first;
        users!.add(user);
        developer.log(user.toString());
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
        title: Text(t.whoWouldYouLikeToTransfer),
      ),
      body: Column(
        children: [
          MainSearchBar(),
          Text(t.yourFollowing),
          Flexible(
            child: ListView(
              children: [
                for (var item in users!)
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: CachedNetworkImageProvider(item.iconUrl ?? ''),
                    ),
                    title: Text(item.name ?? ''),
                    trailing: TextButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return TransferDialog(
                                  fromUser: MyApp.user!,
                                  toUser: item,
                                  storedLiqueur: widget.storedLiqueur,
                                );
                              });
                        },
                        child: Text(t.transfer)),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TransferDialog extends StatefulWidget {
  const TransferDialog({super.key, required this.fromUser, required this.toUser, required this.storedLiqueur});
  final api.User fromUser;
  final api.User toUser;
  final api.StoredLiqueur storedLiqueur;
  @override
  State<TransferDialog> createState() => _TransferDialogState();
}

class _TransferDialogState extends State<TransferDialog> {
  int amount = 1;
  int page = 0;
  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return AlertDialog(
      title: Text(page == 0
          ? t.transfer
          : page == 1
              ? t.confirmation
              : ''),
      actionsAlignment: MainAxisAlignment.spaceEvenly,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: page == 1 ? CrossAxisAlignment.start : CrossAxisAlignment.center,
        children: [
          if (page == 0) ...[
            Text("You can set an amount of as a transfer"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(onPressed: () => setState(() => amount = max(1, amount - 1)), icon: Icon(Icons.remove)),
                Text(amount.toString()),
                IconButton(onPressed: () => setState(() => amount++), icon: Icon(Icons.add)),
              ],
            )
          ],
          if (page == 1) ...[
            Text(t.to),
            Text(widget.toUser.name ?? ''),
            Text(t.liqueurName),
            Text(widget.storedLiqueur.name ?? ''),
            Text(t.amount),
            Text(amount.toString()),
          ],
          if (page == 2) ...[
            CircularProgressIndicator(),
          ],
        ],
      ),
      actions: [
        if (page == 0) ...[
          TextButtonNoBackground(text: t.cancel, onPressed: () => Navigator.of(context).pop()),
          OutlinedButton(onPressed: () => setState(() => page = 1), child: Text(t.next)),
        ],
        if (page == 1) ...[
          TextButtonNoBackground(text: t.back, onPressed: () => setState(() => page = 0)),
          TextButton(
              onPressed: () {
                setState(() {
                  page = 2;
                });
                api.StoredLiqueurTransferApi(MyApp.sessionApiClient).storedLiqueurTransferPost(
                  storedLiqueurTransfer: api.StoredLiqueurTransfer(
                    storedLiqueurId: widget.storedLiqueur.id,
                    fromUserId: widget.fromUser.id,
                    toUserId: widget.toUser.id,
                  ),
                ).then((value) {
                  Navigator.of(context).pop();
                });
              },
              child: Text(t.sendRequest)),
        ],
      ],
    );
  }
}
