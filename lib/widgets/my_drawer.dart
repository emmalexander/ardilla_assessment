import 'package:ardilla_assessment/conts/icomoon_icons.dart';
import 'package:ardilla_assessment/widgets/coming_soon.dart';
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
                Image.asset('assets/avatar.png'),
                const SizedBox(height: 10),
                const Text(
                  'Anita Ojieh',
                  style: TextStyle(
                    fontSize: 19,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
            const SizedBox(height: 50),
            const ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Icon(
                Icons.account_circle_outlined,
                color: Colors.white,
              ),
              title: Text(
                'Profile',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Iconify(Ic.round_work_outline, color: Colors.white),
              title: Text(
                'Portfolio',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const ListTile(
              contentPadding: EdgeInsets.zero,
              leading:
                  Icon(FluentIcons.payment_24_regular, color: Colors.white),
              title: Text(
                'Payment',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Icon(Icomoon.fluent_arrow_growth_24_filled,
                  color: Colors.white),
              title: Text(
                'Investment',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              trailing: ComingSoon(),
            ),
            const ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Iconify(
                Ic.security,
                color: Colors.white,
              ),
              title: Text(
                'Insurance',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              trailing: ComingSoon(),
            ),
            const ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Iconify(
                Ic.outline_explore,
                color: Colors.white,
              ),
              title: Text(
                'Budgeting',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const Spacer(),
            const ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Icon(Icomoon.bx_log_out_circle, color: Colors.white),
              title: Text(
                'Log Out',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
