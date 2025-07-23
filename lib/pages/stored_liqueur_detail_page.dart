import 'dart:math';

import 'package:flutter/material.dart';
import 'package:poc_frontend/l10n/app_localizations.dart';
import 'package:poc_frontend/api/lib/api.dart' as api;
import 'package:poc_frontend/components/establishment_info_card_view.dart';
import 'package:poc_frontend/components/qr_code_dialog.dart';
import 'package:poc_frontend/main.dart';
import 'package:poc_frontend/pages/stored_liqueur_transfer_page.dart';
import 'package:qr_flutter/qr_flutter.dart';

class StoredLiqueurDetailPage extends StatefulWidget {
  const StoredLiqueurDetailPage({super.key, required this.storedLiqueur});
  static const routeName = '/stored_liqueur_detail';
  final api.StoredLiqueur storedLiqueur;

  @override
  State<StoredLiqueurDetailPage> createState() => _StoredLiqueurDetailPageState();
}

class _StoredLiqueurDetailPageState extends State<StoredLiqueurDetailPage> {
  api.Establishment? establishment;
  List<api.StoredLiqueurImage>? storedLiqueurImage;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  void fetchData() async {
    establishment = (await api.EstablishmentApi(MyApp.sessionApiClient).establishmentGet(id: 'eq.${widget.storedLiqueur.establishmentId}'))!.firstOrNull;
    storedLiqueurImage = (await api.StoredLiqueurImageApi(MyApp.sessionApiClient).storedLiqueurImageGet(storedLiqueurId: 'eq.${widget.storedLiqueur.id}', limit: '5'))!;
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(t.storedLiqueurDetails),
      ),
      body: Column(
        children: [
          Flexible(
            child: ListView(
              children: [
                Image.network(
                  '${widget.storedLiqueur.imageUrl}',
                  height: 200,
                  fit: BoxFit.cover,
                  loadingBuilder: (context, child, loadingProgress) => loadingProgress == null ? child : CircularProgressIndicator(),
                  errorBuilder: (context, error, stackTrace) => Placeholder(fallbackHeight: 200),
                ),
                Center(
                  child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Text(
                            '${widget.storedLiqueur.name}',
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          Text(
                            '${widget.storedLiqueur.description}',
                            style: Theme.of(context).textTheme.labelSmall,
                          )
                        ],
                      )),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(t.storedDate),
                      Text('${widget.storedLiqueur.storedDate}'),
                      Text(t.expiryDate),
                      Text('${widget.storedLiqueur.expiryDate}'),
                      Text(t.location),
                      Text('${establishment?.address}'),
                      Text(t.photo('s')),
                      SizedBox(
                        height: 60,
                        width: 200,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: storedLiqueurImage?.length ?? 0,
                          separatorBuilder: (context, index) => const SizedBox(width: 10),
                          itemBuilder: (context, index) {
                            return Image.network(
                              storedLiqueurImage![index].imageUrl ?? '',
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
                ),
              ],
            ),
          ),
          SizedBox(
            height: 90,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                    child: OutlinedButton(onPressed: () => Navigator.pushNamed(context, StoredLiqueurTransferPage.routeName, arguments: widget.storedLiqueur), child: Text(t.transfer)),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                    child: TextButton(onPressed: () => showQrCodeDialog(context, 'stored_liqueur_id=${widget.storedLiqueur.redeemCode}'), child: Text(t.redeem)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
