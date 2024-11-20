import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:poc_frontend/components/search_bar.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  TextEditingController searchController = TextEditingController();
  bool _isShowClearBtn = false;

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Column(
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
              label: Text(t.facilities),
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
            
            Column(
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: AspectRatio(
                        aspectRatio: .75,
                        child: Image.asset('assets/images/image.png', fit: BoxFit.cover),
                      )
                    ),
                    Positioned(
                      right: 15,
                      top: 15,
                      child: Column(
                        children: [
                          Icon(Icons.bookmark_border, color: Colors.white),
                          Text("1234")
                        ],
                      )
                    ),
                  ],
                ),
                Text("Title", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Text("Subtitle", style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal)),
              ],
            )
          ],
        )),
      ],
    );
  }
}
