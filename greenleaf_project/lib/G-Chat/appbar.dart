import 'package:flutter/material.dart';
import 'package:greenleaf_project/components/postavatar.dart';

class GchatAppbar extends StatelessWidget {
  const GchatAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color:Colors.grey.shade100,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          postavatar(),
          Row(
            children: [
              Icon(
                Icons.search,
                size: 30,
              ),
              Icon(
                Icons.notification_add_outlined,
                size: 30,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
