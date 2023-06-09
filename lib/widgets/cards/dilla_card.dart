import 'package:ardilla_assessment/blocs/user_bloc.dart';
import 'package:ardilla_assessment/conts/app_colors.dart';
import 'package:ardilla_assessment/conts/app_constants.dart';
import 'package:ardilla_assessment/conts/text_styles.dart';
import 'package:ardilla_assessment/widgets/buttons/app_filled_button.dart';
import 'package:ardilla_assessment/widgets/cards/ngn_usd_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/pajamas.dart';

class DillaCard extends StatelessWidget {
  const DillaCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Transform(
          transform: Matrix4.skew(0.035, -0.035),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            decoration: BoxDecoration(
              color: AppColors.secondary.withOpacity(.5),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        Container(
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
                  padding:
                      const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Dilla Wallet',
                        style: AppTextStyle.bodySemi.copyWith(
                            color: AppColors.white,
                            fontWeight: FontWeight.w500),
                      ),
                      BlocBuilder<UserBloc, UserState>(
                        builder: (context, state) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                state.showBalance ?? false
                                    ? state.usdSelected ?? false
                                        ? 'USD 10,000.00'
                                        : 'NGN ${(10000 * 740).toStringAsFixed(2).replaceAllMapped(reg, mathFunc)}'
                                    : '*************',
                                style: AppTextStyle.headerThreeBold
                                    .copyWith(color: AppColors.white),
                              ),
                              GestureDetector(
                                onTap: () {
                                  context
                                      .read<UserBloc>()
                                      .add(ShowBalanceEvent());
                                },
                                child: Iconify(
                                  state.showBalance ?? false
                                      ? Pajamas.eye
                                      : Pajamas.eye_slash,
                                  color: AppColors.white,
                                ),
                              )
                            ],
                          );
                        },
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          BlocBuilder<UserBloc, UserState>(
                            builder: (context, state) {
                              return NGNUSDWidget(
                                inactiveColor: AppColors.white,
                                activeColor: AppColors.primaryDark,
                                rateColor: AppColors.white,
                                onNgnPressed: () {
                                  context
                                      .read<UserBloc>()
                                      .add(NGNSelectEvent());
                                },
                                onUsdPressed: () {
                                  context
                                      .read<UserBloc>()
                                      .add(USDSelectEvent());
                                },
                                ngnSelected: state.ngnSelected!,
                                usdSelected: state.usdSelected!,
                              );
                            },
                          ),
                          AppFilledButton(
                              text: 'Add Money',
                              color: AppColors.white,
                              textColor: AppColors.primaryDark,
                              onPressed: () {}),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
