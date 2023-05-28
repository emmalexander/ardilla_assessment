import 'dart:io';

import 'package:ardilla_assessment/conts/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/pajamas.dart';
import 'package:intl/intl.dart';

class DillaCard extends StatelessWidget {
  const DillaCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    NumberFormat currency(context) {
      //Locale locale = Localizations.localeOf(context);
      var format =
          NumberFormat.simpleCurrency(locale: Platform.localeName, name: 'NGN');
      // print(format.currencySymbol);
      return format;
    }

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      decoration: BoxDecoration(
        color: AppColors.secondary,
        borderRadius: BorderRadius.circular(20),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: [
            Align(
                alignment: Alignment.topLeft,
                child: Image.asset('assets/Ellipse_21.png')),
            Align(
                alignment: Alignment.bottomRight,
                child: Image.asset('assets/Ellipse_22.png')),
            Image.asset('assets/Group_2.png'),
            Image.asset('assets/Rectangle_1.png'),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Dilla Wallet',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'USD 10,000.00',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      Iconify(
                        Pajamas.eye,
                        color: Colors.white,
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
                                const Text(
                                  'NGN',
                                  style: TextStyle(
                                      fontSize: 11, color: AppColors.white),
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
                          Text(
                            '${currency(context).currencySymbol.toString()}740 /\$1',
                            style: const TextStyle(
                                fontWeight: FontWeight.w700,
                                color: AppColors.white),
                          )
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 22, vertical: 12),
                        decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(50)),
                        child: const Text(
                          'Add Money',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: AppColors.primaryDark),
                        ),
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
