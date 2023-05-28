import 'package:ardilla_assessment/conts/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/pajamas.dart';

class TotalFunds extends StatelessWidget {
  const TotalFunds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      decoration: BoxDecoration(
          color: const Color(0xFFF9F9F9),
          borderRadius: BorderRadius.circular(20),
          border: Border.fromBorderSide(
              BorderSide(color: AppColors.primaryDark.withOpacity(.1)))),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Total Funds',
                    style: TextStyle(
                        color: AppColors.primaryDark,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'NGN 400,000.00',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: AppColors.primaryDark,
                        ),
                      ),
                      Iconify(
                        Pajamas.eye,
                        color: AppColors.primaryDark.withOpacity(.5),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        spacing: 10,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 5,
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: AppColors.primaryDark.withOpacity(.1)),
                            child: Row(
                              children: [
                                Text(
                                  'NGN',
                                  style: TextStyle(
                                      fontSize: 11,
                                      color: AppColors.primaryDark
                                          .withOpacity(.3)),
                                ),
                                Container(
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 4, horizontal: 5),
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  decoration: BoxDecoration(
                                      color: AppColors.white,
                                      borderRadius: BorderRadius.circular(50)),
                                  child: const Text(
                                    'USD',
                                    style: TextStyle(
                                        fontSize: 11,
                                        color: AppColors.primaryDark),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const Text(
                            'N740 /\$1',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: AppColors.primaryLight2),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
