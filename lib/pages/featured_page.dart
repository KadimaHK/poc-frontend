import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:poc_frontend/api/lib/api.dart' as api;
import 'package:poc_frontend/components/featured_card_view.dart';

class FeaturedPage extends StatefulWidget {
  const FeaturedPage({Key? key}) : super(key: key);

  @override
  _FeaturedPageState createState() => _FeaturedPageState();
}

class _FeaturedPageState extends State<FeaturedPage> with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  List<api.Featured> featured = [];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _fetchData();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  void _fetchData() async {
    featured = (await api.FeaturedApi().featuredGet()) ?? [];
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text(t.featured),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Expanded(
        child: _FeaturedGrid(featured: featured),
      ),
    );
  }
}

class _FeaturedGrid extends StatelessWidget {
  const _FeaturedGrid({required this.featured});
  final List<api.Featured> featured;
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(20),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: 150,
        crossAxisSpacing: 20,
        mainAxisSpacing: 10,
      ),
      children: [
        ...featured.map((f) => FeaturedCardView(featured: f)),
      ],
    );
  }
}
