import 'package:flutter/material.dart';
import 'package:geetha/axiom/doc_status_widget.dart';

class SimpleAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SimpleAppBar({
    super.key,
    required this.title,
    required this.textColor,
    required this.status,
  });

  final String title;
  final Color textColor;
  final String status;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      scrolledUnderElevation: 0.0,
      titleSpacing: 0,
      centerTitle: false,
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(title, style: const TextStyle(color: Colors.black)),
        ],
      ),
      automaticallyImplyLeading: false,
      leading: IconButton(
          onPressed: () {},
          icon: const CircleAvatar(
            radius: 14,
            backgroundColor: Colors.black,
            child: Icon(Icons.arrow_back, color: Colors.white, size: 18),
          )),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: DocStatusWidget  (status: status),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
