import 'package:flutter/material.dart';
import 'package:poc_frontend/l10n/app_localizations.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QrCodeScannerPage extends StatefulWidget {
  const QrCodeScannerPage({super.key});

  @override
  State<QrCodeScannerPage> createState() => _QrCodeScannerPageState();
}


class _QrCodeScannerPageState extends State<QrCodeScannerPage> {

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    final GlobalKey key = GlobalKey();

    void onQRViewCreated(QRViewController controller) {
      controller.scannedDataStream.listen((scanData) {
        if (scanData.code != null) {
          controller.pauseCamera();
          Navigator.pop(context, scanData.code);
        }
      });
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(t.qrCodeScanner),
      ),
      body: QRView(
        key: key,
        onQRViewCreated: onQRViewCreated,
        overlay: QrScannerOverlayShape(
          borderColor: Colors.red,
          borderRadius: 10,
          borderLength: 30,
          borderWidth: 10,
          cutOutSize: 300,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_scanner),
            label: t.scan,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code),
            label: t.show,
          ),
        ],
        onTap: (index) {
        },
      ),
    );
  }
}