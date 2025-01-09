import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:poc_frontend/api/lib/api.dart' as api;
import 'package:poc_frontend/components/app_bar.dart';
import 'package:poc_frontend/components/establishment_card_view.dart';
import 'package:poc_frontend/components/search_bar.dart';
import 'package:poc_frontend/main.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});
  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  TextEditingController searchController = TextEditingController();
  List<api.Establishment> establishments = [];

  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  void _fetchData() async {
    establishments = (await api.EstablishmentApi().establishmentGet()) ?? [];
    if(mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: MainAppBar(title: t.explore),
      body: Column(
        children: [
          MainSearchBar(),
          Wrap(
            children: [
              RawChip(
                label: Text(t.distance),
                avatar: Icon(
                  Icons.arrow_drop_down,
                ),
                onPressed: () => {},
              ),
              RawChip(
                label: Text(t.location),
                avatar: Icon(
                  Icons.arrow_drop_down,
                ),
                onPressed: () => {},
              ),
              RawChip(
                label: Text(t.theme),
                avatar: Icon(
                  Icons.arrow_drop_down,
                ),
                onPressed: () => {},
              ),
              RawChip(
                label: Text(t.facility('s')),
                avatar: Icon(
                  Icons.arrow_drop_down,
                ),
                onPressed: () => {},
              ),
            ],
          ),
          Expanded(
              child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: .6,
            ),
            shrinkWrap: true,
            children: [
              ...establishments.map((e) => EstablishmentCardView(establishment: e)),
            ],
          )),
        ],
      ),
    );
  }
}
