import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:poc_frontend/api/lib/api.dart';
import 'package:poc_frontend/components/search_bar.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  List<EstablishmentCategory> categories = [];

  @override
  void initState() {
    super.initState();
    _fetchCategories();
  }

  Future<void> _fetchCategories() async {
    categories = (await EstablishmentCategoryApi().establishmentCategoryGet())!;
    print(categories);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MainSearchBar(),
        Expanded(
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 1.5,
            ),
            children: [
              ...categories.map((category) => SearchCategoryButton(type: category.category ?? "")).toList(),
            ],
          ),
        ),
      ],
    );
  }
}

class SearchCategoryButton extends StatelessWidget {
  final String type;

  const SearchCategoryButton({Key? key, required this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        gradient: LinearGradient(colors: [Colors.blue, Colors.blue.shade100], begin: Alignment.topCenter, end: Alignment.bottomCenter),
      ),
      child: ElevatedButton(
          onPressed: () {
            print(type);
          },
          style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)), backgroundColor: Colors.transparent, padding: EdgeInsets.all(20)),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              type,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          )),
    );
  }
}
