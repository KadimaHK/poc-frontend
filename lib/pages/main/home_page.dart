import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:poc_frontend/api/lib/api.dart' as api;
import 'package:poc_frontend/components/pick_card_view.dart';
import 'package:poc_frontend/components/search_bar.dart';
import 'package:poc_frontend/components/icon_button_label.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController searchController = TextEditingController();
  List<api.VwPick> picks = [];
  @override
  void initState() {
    fetchPicks();
    super.initState();
  }

  Future<void> fetchPicks() async {
    picks = await api.VwPickApi().vwPickGet() ?? [];
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: MainSearchBar(),
          ),
          Expanded(
            child: ListView(
              children: [
                // Picks
                Text(t.pick, style: TextStyle(fontSize: 20)),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: picks.map((pick) => PickCardView(pick: pick)).toList(),
                  ),
                ),

                // Buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    LabeledIconButton(
                      assetImagePath: 'assets/images/icon_menu_0.png',
                      label: t.nearby,
                      onPressed: () => {},
                    ),
                    LabeledIconButton(
                      assetImagePath: 'assets/images/icon_menu_1.png',
                      label: t.bookings,
                      onPressed: () => {},
                    ),
                    LabeledIconButton(
                      assetImagePath: 'assets/images/icon_menu_2.png',
                      label: t.benefit,
                      onPressed: () => {},
                    ),
                    LabeledIconButton(
                      assetImagePath: 'assets/images/icon_menu_3.png',
                      label: t.storedLiqueurs,
                      onPressed: () => {},
                    ),
                  ],
                ),

                ListTile(
                  title: Text(t.featured, style: TextStyle(fontSize: 20)),
                  trailing: Icon(Icons.arrow_forward_ios, size: 10),
                ),
                //Featured
              ],
            ),
          ),
        ],
      ),
    );
  }
}
