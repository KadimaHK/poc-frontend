import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:poc_frontend/components/searchBar.dart';
import 'package:poc_frontend/components/iconButtonLabel.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController searchController = TextEditingController();

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
                Text(t.fridaysPick, style: TextStyle(fontSize: 20)),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  height: 200,
                  child: ListView(scrollDirection: Axis.horizontal, children: [
                    
                  ]),
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
