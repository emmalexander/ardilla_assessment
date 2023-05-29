import 'package:ardilla_assessment/widgets/profile_row.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 20, right: 20, top: 30),
      child: ProfileRow(),
    );
  }

  @override
  Size get preferredSize => const Size(double.maxFinite, 70);
}
