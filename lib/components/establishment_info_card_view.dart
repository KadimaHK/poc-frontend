import 'package:flutter/material.dart';
import 'package:poc_frontend/api/lib/api.dart' as api;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class EstablishmentInfoCardView extends StatefulWidget {
  const EstablishmentInfoCardView({
    Key? key,
    required this.establishmentId,
  }) : super(key: key);

  final int? establishmentId;

  @override
  State<EstablishmentInfoCardView> createState() => _EstablishmentInfoCardViewState();
}

class _EstablishmentInfoCardViewState extends State<EstablishmentInfoCardView> {
  api.VwEstablishment? establishment;
  List<api.VwEstablishmentImage>? establishmentImages = [];
  @override
  void initState() {
    fetchData();
    super.initState();
  }

  void fetchData() async {
    establishment = (await api.VwEstablishmentApi().vwEstablishmentGet(id: widget.establishmentId?.toString()))?.firstOrNull;
    establishmentImages = await api.VwEstablishmentImageApi().vwEstablishmentImageGet(establishmentId: widget.establishmentId?.toString());
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    if (establishment == null || establishmentImages == null) {
      return CircularProgressIndicator();
    }
    return Stack(
      children: [
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(left: 10, right: 10),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //title
              Text(establishment!.name ?? '', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      "${establishment!.baseUrl}${establishment!.fileName}",
                      height: 140,
                      width: 150,
                      fit: BoxFit.cover,
                      loadingBuilder: (context, child, loadingProgress) => loadingProgress == null ? child : CircularProgressIndicator(),
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('${establishment!.location} ・ ${1234}km', style: const TextStyle(fontSize: 15)),
                      Text('${establishment!.category}', style: const TextStyle(fontSize: 15)),
                      Text('★ ${establishment!.rank}', style: const TextStyle(fontSize: 15)),
                      SizedBox(
                        height: 60,
                        width: 200,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: establishmentImages!.length,
                          separatorBuilder: (context, index) => const SizedBox(width: 10),
                          itemBuilder: (context, index) {
                            return Image.network(
                              "${establishmentImages![index].baseUrl}${establishmentImages![index].fileName}",
                              height: 50,
                              width: 100,
                              fit: BoxFit.cover,
                              loadingBuilder: (context, child, loadingProgress) => loadingProgress == null ? child : CircularProgressIndicator(),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
        Positioned(
          right: 15,
          top: 15,
          child: Column(
            children: [Icon(Icons.bookmark_border, color: Colors.white), Text("1234")],
          ),
        ),
      ],
    );
  }
}

class EstablishmentFeaturedOfferView extends StatefulWidget {
  const EstablishmentFeaturedOfferView({
    Key? key,
    required this.establishmentId,
  }) : super(key: key);

  final int? establishmentId;

  @override
  State<EstablishmentFeaturedOfferView> createState() => _EstablishmentFeaturedOfferViewState();
}

class _EstablishmentFeaturedOfferViewState extends State<EstablishmentFeaturedOfferView> {
  List<api.VwFeaturedOffer>? featuredOffers;
  @override
  void initState() {
    fetchData();
    super.initState();
  }

  void fetchData() async {
    featuredOffers = await api.VwFeaturedOfferApi().vwFeaturedOfferGet(establishmentId: widget.establishmentId?.toString());
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
