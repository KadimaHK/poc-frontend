
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MainSearchBar extends StatefulWidget {
  const MainSearchBar({Key? key}) : super(key: key);

  @override
  State<MainSearchBar> createState() => _MainSearchBarState();
}

class _MainSearchBarState extends State<MainSearchBar> {
  TextEditingController searchController = TextEditingController();
  bool _isShowClearBtn = false;

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return SearchBar(
      onChanged: (value) => {
        setState(() {
          _isShowClearBtn = value.isNotEmpty;
        })
      },
      controller: searchController,
      hintText: t.search,
      leading: Icon(Icons.search),
      trailing: [
        _isShowClearBtn
            ? IconButton(
                onPressed: () {
                  searchController.clear();
                  setState(() {
                    _isShowClearBtn = false;
                  });
                },
                icon: Icon(
                  Icons.clear,
                  color: Colors.black,
                ))
            : const SizedBox()
      ],
    );
  }
}