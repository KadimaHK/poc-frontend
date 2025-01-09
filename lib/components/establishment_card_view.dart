import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:poc_frontend/api/lib/api.dart' as api;
import 'package:poc_frontend/pages/establishment_profile_page.dart';

class EstablishmentCardView extends StatefulWidget {
  const EstablishmentCardView({super.key, required this.establishment});
  final api.Establishment establishment;
  @override
  _EstablishmentCardViewState createState() => _EstablishmentCardViewState();
}

class _EstablishmentCardViewState extends State<EstablishmentCardView> {
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => Navigator.of(context).pushNamed(EstablishmentProfilePage.routeName, arguments: widget.establishment),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: AspectRatio(
                    aspectRatio: .75,
                    child: CachedNetworkImage(
                      imageUrl: '${widget.establishment.thumbnailUrl}',
                      fit: BoxFit.cover,
                      placeholder: (context, url) => CircularProgressIndicator(),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                  ),
                ),
                Positioned(
                    right: 15,
                    top: 15,
                    child: Column(
                      children: [IconButton(onPressed: () {}, icon: Icon(Icons.bookmark_border)), Text("1234")],
                    )),
              ],
            ),
            Text('${widget.establishment.name}', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text('${widget.establishment.category} | ★ ${widget.establishment.rank}', style: TextStyle(fontSize: 15, color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
