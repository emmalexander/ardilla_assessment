import 'package:ardilla_assessment/conts/app_colors.dart';
import 'package:ardilla_assessment/conts/text_styles.dart';
import 'package:flutter/material.dart';

class ChartContainer extends StatelessWidget {
  const ChartContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      height: 110,
      decoration: BoxDecoration(
          color: AppColors.offWhite, borderRadius: BorderRadius.circular(8)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 10),
            height: 60,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '80%',
                  style: AppTextStyle.headerThreeMid.copyWith(
                      fontWeight: FontWeight.w500, color: Colors.black54),
                ),
                Wrap(
                  spacing: 5,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text(
                      'Complete KYC',
                      style: AppTextStyle.vTinyText
                          .copyWith(color: AppColors.primary),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 10,
                      color: AppColors.primary,
                    )
                  ],
                ),
                const SizedBox(
                  width: 80,
                  child: LinearProgressIndicator(
                    value: .7,
                    //borderRadius: BorderRadius.circular(80),
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
              Row(
                children: [
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      const Icon(
                        Icons.arrow_drop_up_outlined,
                        color: Colors.green,
                      ),
                      const Text(
                        '10.00%',
                        style: TextStyle(color: Colors.green),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Cashflow',
                        style: AppTextStyle.vTinyText.copyWith(
                            color: AppColors.primaryDark,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  const SizedBox(width: 20)
                ],
              ),
              // TODO: Implement curve chart
              Image.asset('assets/chart.png', width: 200),
              Row(
                children: [
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: 4,
                    children: [
                      const Icon(
                        Icons.check_circle,
                        color: AppColors.secondary,
                        size: 15,
                      ),
                      Text(
                        'Inflow',
                        style: AppTextStyle.tinyText
                            .copyWith(color: AppColors.primaryDark),
                      ),
                    ],
                  ),
                  const SizedBox(width: 10),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: 4,
                    children: [
                      const Icon(
                        Icons.circle,
                        color: AppColors.primary,
                        size: 15,
                      ),
                      Text(
                        'Outflow',
                        style: AppTextStyle.tinyText
                            .copyWith(color: AppColors.primaryDark),
                      ),
                    ],
                  ),
                  const SizedBox(width: 20)
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
