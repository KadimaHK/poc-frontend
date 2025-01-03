import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
  api.Establishment? establishment;
  List<api.EstablishmentImage>? establishmentImages = [];
  @override
  void initState() {
    fetchData();
    super.initState();
  }

  void fetchData() async {
    establishment = (await api.EstablishmentApi().establishmentGet(id: "eq.${widget.establishmentId?.toString()}"))?.firstOrNull;
    establishmentImages = await api.EstablishmentImageApi().establishmentImageGet(establishmentId: widget.establishmentId?.toString());
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    if (establishment == null || establishmentImages == null) {
      return CircularProgressIndicator();
    }
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Stack(
        fit: StackFit.passthrough,
        children: [
          Container(
            width: 400,
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
                        "${establishment!.thumbnailUrl}",
                        height: 140,
                        width: 150,
                        fit: BoxFit.cover,
                        loadingBuilder: (context, child, loadingProgress) => loadingProgress == null ? child : CircularProgressIndicator(),
                        errorBuilder: (context, error, stackTrace) => Placeholder(fallbackHeight: 140, fallbackWidth: 150),
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
                                "${establishmentImages![index].imageUrl}",
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
                  ],
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 100,
                  child: EstablishmentFeaturedOfferView(establishmentId: widget.establishmentId),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Image.asset("assets/images/icon_menu_1.png", height: 50, width: 50),
                    SizedBox(width: 10),
                    Text("${t.earn} "),
                    SvgPicture.asset(
                      "assets/images/logo.svg",
                      width: Theme.of(context).textTheme.bodyMedium?.fontSize,
                      height: Theme.of(context).textTheme.bodyMedium?.fontSize,
                    ),
                    Text(" ${establishment!.bookingPoints}"),
                    Text(" ${t.pointsPerSeat}"),
                    Spacer(),
                    TextButton(onPressed: () => {}, child: Text(t.booking)),
                  ],
                ),
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
      ),
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
  List<api.FeaturedOffer>? featuredOffers;
  @override
  void initState() {
    fetchData();
    super.initState();
  }

  void fetchData() async {
    featuredOffers = await api.FeaturedOfferApi().featuredOfferGet(establishmentId: widget.establishmentId?.toString());  
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    if (featuredOffers == null) {
      return CircularProgressIndicator();
    }
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: featuredOffers!.length,
      separatorBuilder: (context, index) => const SizedBox(width: 10),
      itemBuilder: (context, index) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            height: 100,
            width: 350,
            child: Row(
              children: [
                SizedBox(width: 10),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    "${featuredOffers![index].imageUrl}",
                    height: 80,
                    width: 80,
                    fit: BoxFit.cover,
                    loadingBuilder: (context, child, loadingProgress) => loadingProgress == null ? child : CircularProgressIndicator(),
                    errorBuilder: (context, error, stackTrace) => Placeholder(fallbackHeight: 80, fallbackWidth: 80),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 10),
                      Text(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        featuredOffers![index].description ?? '',
                        style: const TextStyle(fontSize: 15, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  flex: 1,
                  child: TextButton(
                    onPressed: () => {},
                    child: Text(t.buy),
                  ),
                ),
                SizedBox(width: 10),
              ],
            ),
          ),
        );
      },
    );
  }
}
