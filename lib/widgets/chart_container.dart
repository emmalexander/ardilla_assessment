import 'package:ardilla_assessment/conts/app_colors.dart';
import 'package:flutter/material.dart';

class ChartContainer extends StatelessWidget {
  const ChartContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      padding: const EdgeInsets.all(10),
      height: 110,
      decoration: const BoxDecoration(color: Color(0xFFF9F9F9)),
      child: Row(
        children: [
          const SizedBox(
            height: 60,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '80%',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 23,
                      color: Colors.black54),
                ),
                Wrap(
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
                  child: LinearProgressIndicator(value: .7),
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
            children: [
              const Row(
                children: [
                  Wrap(
                    spacing: 2,
                    children: [
                      Icon(
                        Icons.arrow_drop_up_outlined,
                        color: Colors.green,
                      ),
                      Text(
                        '10.00%',
                        style: TextStyle(color: Colors.green),
                      ),
                      Text(
                        'Cashflow',
                        style: TextStyle(color: AppColors.primaryDark),
                      )
                    ],
                  )
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
                        color: Color(0xFFE8356D),
                      ),
                      Text('Inflow'),
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
                      ),
                      Text('Outflow'),
                    ],
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
