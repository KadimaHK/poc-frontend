import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UserMembershipCard extends StatefulWidget {
  const UserMembershipCard({Key? key}) : super(key: key);

  @override
  State<UserMembershipCard> createState() => _UserMembershipCardState();
}


class _UserMembershipCardState extends State<UserMembershipCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 2,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              // svgPicture('assets/images/user.svg', width: 50, height: 50),
              SvgPicture.asset('assets/images/logo.svg', width: 50, height: 50),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('John Doe', style: TextStyle(fontSize: 18)),
                  Text(''),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),

          const Divider(),
        ],
      ),
    );
  }
}
