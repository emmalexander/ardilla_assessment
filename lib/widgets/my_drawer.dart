import 'package:ardilla_assessment/conts/app_colors.dart';
import 'package:ardilla_assessment/conts/icomoon_icons.dart';
import 'package:ardilla_assessment/conts/text_styles.dart';
import 'package:ardilla_assessment/widgets/coming_soon.dart';
import 'package:ardilla_assessment/widgets/custom_dialog_box.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(),
      backgroundColor: Theme.of(context).primaryColor,
      width: 280,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/avatar.png',
                  height: 50,
                ),
                const SizedBox(height: 10),
                Text(
                  'Anita Ojieh',
                  style: AppTextStyle.headerFourMidBold
                      .copyWith(color: AppColors.white),
                )
              ],
            ),
            const SizedBox(height: 50),
            ListTile(
              onTap: () {},
              contentPadding: EdgeInsets.zero,
              leading: const Icon(Icons.account_circle_outlined,
                  color: AppColors.white),
              title: const Text(
                'Profile',
                style: TextStyle(color: AppColors.white),
              ),
            ),
            ListTile(
              onTap: () {},
              contentPadding: EdgeInsets.zero,
              leading:
                  const Iconify(Ic.round_work_outline, color: AppColors.white),
              title: const Text(
                'Portfolio',
                style: TextStyle(color: AppColors.white),
              ),
            ),
            ListTile(
              onTap: () {},
              contentPadding: EdgeInsets.zero,
              leading: const Icon(FluentIcons.payment_24_regular,
                  color: AppColors.white),
              title: const Text(
                'Payment',
                style: TextStyle(color: AppColors.white),
              ),
            ),
            ListTile(
              onTap: () {},
              contentPadding: EdgeInsets.zero,
              leading: const Icon(Icomoon.arrowGrowth, color: AppColors.white),
              title: const Text(
                'Investment',
                style: TextStyle(color: AppColors.white),
              ),
              trailing: const ComingSoon(),
            ),
            ListTile(
              onTap: () {},
              contentPadding: EdgeInsets.zero,
              leading: const Iconify(Ic.security, color: AppColors.white),
              title: const Text(
                'Insurance',
                style: TextStyle(color: AppColors.white),
              ),
              trailing: const ComingSoon(),
            ),
            ListTile(
              onTap: () {},
              contentPadding: EdgeInsets.zero,
              leading: const Iconify(
                Ic.outline_explore,
                color: AppColors.white,
              ),
              title: const Text(
                'Budgeting',
                style: TextStyle(color: AppColors.white),
              ),
            ),
            const Spacer(),
            TextButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => const CustomDialogBox(
                            title: 'Are you sure you want to LOG OUT?',
                          ));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icomoon.logOut, color: AppColors.white),
                    const SizedBox(width: 15),
                    Text(
                      'Log Out',
                      style: AppTextStyle.smallSemi
                          .copyWith(color: AppColors.white),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
