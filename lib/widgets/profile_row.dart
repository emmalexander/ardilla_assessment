import 'package:ardilla_assessment/conts/app_colors.dart';
import 'package:ardilla_assessment/conts/text_styles.dart';
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
              'assets/avatar.png', height: 50,
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
                  style: AppTextStyle.tinyText.copyWith(
                      color: Colors.grey.shade500, fontWeight: FontWeight.w500),
                ),
                const Icon(
                  Icons.sunny,
                  color: AppColors.amber,
                  size: 13,
                )
                // Iconify(EmojioneMonotone.sun)
                //Image.asset('assets/sun.png')
              ],
            ),
            Text(
              'Cadet <Annie/>',
              style: AppTextStyle.headerFourMidBold
                  .copyWith(color: AppColors.primaryDark),
            ),
          ],
        ),
        const Spacer(),
        SvgPicture.asset('assets/notification.svg')
      ],
    );
  }
}
