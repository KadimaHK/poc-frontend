import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:poc_frontend/api/lib/api.dart' as api;

class BarProfilePage extends StatefulWidget {
  const BarProfilePage({super.key});
  @override
  State<BarProfilePage> createState() => _BarProfilePageState();
}

class _BarProfilePageState extends State<BarProfilePage> {
  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return ListView(
      children: [
        TextButton.icon(onPressed: () {}, label: Text(t.order), icon: Icon(Icons.qr_code_scanner)),
        Stack(
          children: [
            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: Image.network(
                    'https://s3-alpha-sig.figma.com/img/ff15/362e/264409c1ad26b2486d7aea2f5768200c?Expires=1731888000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=fkpJGRinRqe0DxDCiZvDAaC9B0ZgPbrRHsShXVN6Z4NmQCPN1gp56qQiSiRZXgTL2c5-A0uEeZ9BZiUQxBCAL7a8fHJ0CfXBCSzl4NnrRF8gLn4SG1bHGd04OEgj1vk5hn~seurFsfoDqChFcGaRvgVX03x1NW~5F7KaeBTlearKg0vjEI5OQxOvs2VQ1DSOaI-8oaw30iKl6zY~AQUASOzBJpKLwQtcrXFv~yg7mRPQ7-XsAupeWDppCO85n0rLKBSv0IpBPRnBW7K09K7FFI1DSg5dbjugWBgowZYFOdODQ2J4dN5UYhwIQ37T6qn9JB-KIp88YP9afZrl2i8d-A__',
                    errorBuilder: (context, error, stackTrace) => Placeholder(),
                  ).image,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: () => {}, icon: Icon(Icons.arrow_back)),
                  IconButton(onPressed: () => {}, icon: Icon(Icons.share_outlined)),
                ],
              ),
            ),
          ],
        ),
        ListTile(
          leading: Image.network(
              'https://s3-alpha-sig.figma.com/img/6775/a9df/ea7d766d30f5a4bd0b09d1a2bfbd0fbe?Expires=1731888000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Wm3QdCOlg~X5k8xogx~lrE4dsfYfWqbCH62cVIEhmpv9GlHQ~G840PV~zpnVrDs-397rz-XOy7uAzlg0n-A4sOi0tT38~t2sqA6JV6kxt~nQ-YUrZmqO3QKoeu1yYuwMU~5HuiiUB2XrKzvM33YDY-Xsg7LzCk3Y1hJFgR7kbE6RkXwBYPgqxGyegN64Ch3PvcOqPDZ8zlhISA8DK-XbJ~iWHkrL~VKBjlcXZgV~X3aDFSfK84XoPlK0ZolvM3i4dS4-1rz7DfTmD9Lw9PYSgfqFAL0po7qhdC~BDUW9qRouLrh0kwjx20hITemvDkKhDnsK4-gMP-1-MsNxBCjHzA__',
                      errorBuilder: (context, error, stackTrace) => Placeholder(),),
          title: Text('Oasis Bar & Restaurant'),
          subtitle: Text('Prince Edward・2.8km\nCocktail | Beer Pong\n ★ 3.24'),
          trailing: IconButton(onPressed: () => {}, icon: Icon(Icons.bookmark_border)),
        ),
        ListTile(
          subtitle: Text('Expansive shopping complex offering chain boutiques, eateries, a cinema & public green spaces.'),
        ),
        Row(
          children: [
            TextButton.icon(onPressed: () {}, label: Text(t.order), icon: Icon(Icons.qr_code_scanner)),
            TextButton.icon(onPressed: () {}, label: Text(t.menu), icon: Icon(Icons.qr_code_scanner)),
            //booking contact
            TextButton.icon(onPressed: () {}, label: Text(t.booking), icon: Icon(Icons.qr_code_scanner)),
            TextButton.icon(onPressed: () {}, label: Text(t.contact), icon: Icon(Icons.qr_code_scanner)),
          ],
        ),
        ListTile(
            title: Text('Opening Hours'),
            trailing: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
            shape: Border(
              top: BorderSide(color: Colors.grey),
              bottom: BorderSide(color: Colors.grey),
            )),
        ListTile(
          title: Text(t.notice),
          subtitle: Text('Please note that the bar will be closed on 1st and 2nd of January 2022.'),
          trailing: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
        ),
        ListTile(
          title: Text(t.benefits),
          subtitle: Text('Enjoy 10% off on all drinks during happy hour.'),
          trailing: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
        ),
        ListTile(
          title: Text(t.photos),
          trailing: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
        ),
        ListTile(
          title: Text(t.about),
          subtitle: Text('Expansive shopping complex offering chain boutiques, eateries, a cinema & public green spaces.'),
          trailing: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
        ),
        ListTile(
          title: Text(t.ratings),
          trailing: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
        ),
        ListTile(
          title: Text(t.relatedNews),
          trailing: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
        ),
        ListTile(
          title: Text(t.suggestedBars),
          trailing: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
        ),
      ],
    );
  }
}
