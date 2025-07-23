import 'dart:math';

import 'package:flutter/material.dart';
import 'package:poc_frontend/l10n/app_localizations.dart';
import 'package:poc_frontend/api/lib/api.dart' as api;
import 'package:poc_frontend/components/establishment_info_card_view.dart';
import 'package:poc_frontend/main.dart';
import 'package:qr_flutter/qr_flutter.dart';

class VoucherDetailPage extends StatefulWidget {
  const VoucherDetailPage({super.key, required this.userVoucher});
  static const routeName = '/voucher_detail';
  final api.UserFeaturedOffer userVoucher;
  @override
  State<VoucherDetailPage> createState() => _VoucherDetailPageState();
}

class _VoucherDetailPageState extends State<VoucherDetailPage> {
  api.Establishment? establishment;
  api.FeaturedOffer? voucher;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  void fetchData() async {
    voucher = (await api.FeaturedOfferApi(MyApp.sessionApiClient).featuredOfferGet(id: 'eq.${widget.userVoucher.featuredOfferId}'))!.firstOrNull;
    establishment = (await api.EstablishmentApi(MyApp.sessionApiClient).establishmentGet(id: 'eq.${voucher?.establishmentId}'))!.firstOrNull;
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(t.voucherDetails),
      ),
      body: Column(
        children: [
          Flexible(
            child: ListView(
              children: [
                Image.network(
                  '${voucher?.imageUrl}',
                  height: 200,
                  fit: BoxFit.cover,
                  loadingBuilder: (context, child, loadingProgress) => loadingProgress == null ? child : CircularProgressIndicator(),
                  errorBuilder: (context, error, stackTrace) => Placeholder(fallbackHeight: 200),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      '${voucher?.title}',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${establishment?.name}',
                      ),
                      SizedBox(height: 10),
                      Text(
                        '${voucher?.description}',
                      ),
                      SizedBox(height: 10),
                      Text(
                        '${voucher?.howToRedeem}',
                      ),
                    ],
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(t.description, style: Theme.of(context).textTheme.headlineMedium),
                      SizedBox(height: 10),
                      Text('${voucher?.description}'),
                      SizedBox(height: 10),
                      Text(t.showTheQRCodeToTheCashier),
                      SizedBox(height: 10),
                      Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: QrImageView(
                            data: '${widget.userVoucher.redeemCode}',
                            version: QrVersions.auto,
                            size: 200.0,
                            backgroundColor: Colors.white,
                          ),
                        ),
                      ),
                      Text(t.howToRedeem),
                      SizedBox(height: 10),
                      Text('${voucher?.howToRedeem}'),
                      SizedBox(height: 10),
                      Text(t.restaurantInfo, style: Theme.of(context).textTheme.headlineMedium),
                      SizedBox(height: 10),
                      if (establishment != null) EstablishmentInfoCardView(establishmentId: establishment!.id, establishment: establishment),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 100,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(t.redeemNow, style: TextStyle(fontSize: 20)),
                    ),
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
