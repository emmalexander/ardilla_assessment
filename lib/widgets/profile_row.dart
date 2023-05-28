import 'package:ardilla_assessment/conts/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(
                  'Good Morning.',
                  style: TextStyle(color: Colors.grey.shade500, fontSize: 13),
                ),
                const Icon(
                  Icons.sunny,
                  color: Colors.amber,
                  size: 13,
                )
                // Iconify(EmojioneMonotone.sun)
                //Image.asset('assets/sun.png')
              ],
            ),
            const Text(
              'Cadet <Annie/>',
              style: TextStyle(
                  color: AppColors.primaryDark,
                  fontWeight: FontWeight.w700,
                  fontSize: 18),
            ),
          ],
        ),
        const Spacer(),
        SvgPicture.asset('assets/notification.svg')
      ],
    );
  }
}
