import 'package:ardilla_assessment/conts/app_colors.dart';
import 'package:flutter/material.dart';

class ProfileRow extends StatelessWidget {
  const ProfileRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Builder(builder: (context) {
          return IconButton(
            icon: Image.asset(
              'assets/avatar.png',
              // width: 50,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          );
        }),
        SizedBox(width: 10),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(
                  'Good Morning.',
                  style: TextStyle(color: Colors.grey.shade500),
                ),
                Image.asset('assets/sun.png')
              ],
            ),
            Text(
              'Cadet <Annie/>',
              style: TextStyle(
                color: AppColors.primaryDark,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        Spacer(),
        Image.asset('assets/notification.png')
      ],
    );
  }
}
