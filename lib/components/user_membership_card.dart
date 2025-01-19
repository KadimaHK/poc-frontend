import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:poc_frontend/api/lib/api.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:poc_frontend/components/qr_code_dialog.dart';

class UserMembershipCard extends StatefulWidget {
  const UserMembershipCard({Key? key, required this.user}) : super(key: key);
  final User user;
  @override
  State<UserMembershipCard> createState() => _UserMembershipCardState();
}

class _UserMembershipCardState extends State<UserMembershipCard> {
  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Container(
      padding: const EdgeInsets.all(16),
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SvgPicture.asset('assets/images/logo.svg', width: 50, height: 50),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('${widget.user.points} points'),
                  Text(
                    t.pointExpiredDate(widget.user.pointsExpiry?.substring(0, 10) ?? ''),
                  ),
                  Text(t.viewSummary),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Spacer(),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey.withAlpha(100),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(onPressed: () => showQrCodeDialog(context, widget.user.uuid!), icon: const Icon(Icons.qr_code)),
                Text(widget.user.uuid!, style: const TextStyle(fontSize: 12)),
                IconButton(
                    onPressed: () {
                      Clipboard.setData(ClipboardData(text: widget.user.uuid!));
                    },
                    icon: Icon(Icons.copy)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
