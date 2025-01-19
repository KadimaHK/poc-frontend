import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void showQrCodeDialog(BuildContext context, String content) {
  showDialog(
    context: context,
    builder: (context) => Dialog(
      backgroundColor: Colors.transparent,
      child: Center(
        widthFactor: 1,
        heightFactor: 1,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: QrImageView(
            backgroundColor: Colors.white,
            padding: const EdgeInsets.all(20),
            // data: 'stored_liqueur_id=${widget.storedLiqueur.redeemCode}',
            data: content,
            version: QrVersions.auto,
            size: MediaQuery.of(context).size.width * 0.75,
          ),
        ),
      ),
    ),
  );
}
