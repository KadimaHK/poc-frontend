import 'package:flutter/material.dart';
import 'package:poc_frontend/l10n/app_localizations.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});
  static const routeName = '/notification';
  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

enum TabType { personal, news }

class _NotificationPageState extends State<NotificationPage> with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        title: Text(t.notification, textAlign: TextAlign.center),
      ),
      body: Column(
        children: [
          TabBar(
            controller: _tabController,
            tabs: [
              Tab(text: t.personal),
              Tab(text: t.news),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                PersonalListView(),
                NewsListView(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PersonalListView extends StatelessWidget {
  const PersonalListView({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.person),
          title: Text('Personal $index'),
          subtitle: Text('Personal $index'),
        );
      },
    );
  }
}

class NewsListView extends StatelessWidget {
  const NewsListView({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.article),
          title: Text('News $index'),
          subtitle: Text('News $index'),
        );
      },
    );
  }
}
