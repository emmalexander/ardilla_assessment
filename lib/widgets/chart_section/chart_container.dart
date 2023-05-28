import 'package:ardilla_assessment/conts/app_colors.dart';
import 'package:flutter/material.dart';

class ChartContainer extends StatelessWidget {
  const ChartContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      //padding: const EdgeInsets.all(10),
      height: 110,
      decoration: const BoxDecoration(color: Color(0xFFF9F9F9)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 10),
            height: 60,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '80%',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 23,
                      color: Colors.black54),
                ),
                const Wrap(
                  // alignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text(
                      'Complete KYC',
                      style: TextStyle(color: AppColors.primary, fontSize: 10),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 10,
                      color: AppColors.primary,
                    )
                  ],
                ),
                SizedBox(
                  width: 70,
                  child: LinearProgressIndicator(
                    value: .7,
                    borderRadius: BorderRadius.circular(80),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 35,
            child: VerticalDivider(),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Row(
                children: [
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Icon(
                        Icons.arrow_drop_up_outlined,
                        color: Colors.green,
                      ),
                      Text(
                        '10.00%',
                        style: TextStyle(color: Colors.green),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Cashflow',
                        style: TextStyle(
                            fontSize: 12,
                            color: AppColors.primaryDark,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  SizedBox(width: 20)
                ],
              ),
              Image.asset('assets/chart.png'),
              const Row(
                children: [
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: 4,
                    children: [
                      Icon(
                        Icons.check_circle,
                        color: AppColors.secondary,
                        size: 15,
                      ),
                      Text(
                        'Inflow',
                        style: TextStyle(
                            fontSize: 12,
                            color: AppColors.primaryDark,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: 4,
                    children: [
                      Icon(
                        Icons.circle,
                        color: AppColors.primary,
                        size: 15,
                      ),
                      Text(
                        'Outflow',
                        style: TextStyle(
                            fontSize: 12,
                            color: AppColors.primaryDark,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(width: 20)
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
