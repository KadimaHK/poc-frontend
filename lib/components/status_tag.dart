import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:poc_frontend/consts.dart';

class StatusTag extends StatelessWidget {
  StatusTag({super.key, required this.status, this.fontSize = 15, this.padding = 5, this.borderRadius = 5});
  final Status status;
  double fontSize = 15;
  double padding = 5;
  double borderRadius = 5;
  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    String text = '';
    Color color = Colors.red;

    switch (status) {
      case Status.pending:
        text = t.pending;
        color = Colors.green[400]!;
        break;
      case Status.redeemed:
        text = t.redeemed;
        color = Colors.red[400]!;
        break;
      case Status.expired:
        text = t.expired;
        color = Colors.red;
        break;
      case Status.transferred:
        text = t.transferred;
        color = Colors.grey;
        break;
      default:
        return Container();
    }

    return Container(
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Text(text, style: TextStyle(color: Colors.white, fontSize: fontSize)),
    );
  }
}
