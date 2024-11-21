import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:poc_frontend/api/lib/api.dart' as api;
import 'package:poc_frontend/pages/bar_profile_page.dart';

class EstablishmentCardView extends StatefulWidget {
  const EstablishmentCardView({super.key, required this.establishment});
  final api.VwEstablishment establishment;
  @override
  _EstablishmentCardViewState createState() => _EstablishmentCardViewState();
}

class _EstablishmentCardViewState extends State<EstablishmentCardView> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => BarProfilePage())),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: AspectRatio(
                    aspectRatio: .75,
                    child: Image.network('${widget.establishment.baseUrl}${widget.establishment.fileName}', fit: BoxFit.cover),
                  )),
              Positioned(
                  right: 15,
                  top: 15,
                  child: Column(
                    children: [Icon(Icons.bookmark_border, color: Colors.white), Text("1234")],
                  )),
            ],
          ),
          Text('${widget.establishment.name}', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Text('${widget.establishment.category} | ★ ${widget.establishment.rank}', style: TextStyle(fontSize: 15, color: Colors.grey)),
        ],
      ),
    );
  }
}
