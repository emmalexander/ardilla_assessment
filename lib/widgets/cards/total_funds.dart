import 'package:ardilla_assessment/blocs/user_bloc.dart';
import 'package:ardilla_assessment/conts/app_colors.dart';
import 'package:ardilla_assessment/conts/app_constants.dart';
import 'package:ardilla_assessment/conts/text_styles.dart';
import 'package:ardilla_assessment/widgets/cards/ngn_usd_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/pajamas.dart';

class TotalFunds extends StatelessWidget {
  const TotalFunds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      decoration: BoxDecoration(
          color: AppColors.offWhite,
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
                  Text(
                    'Total Funds',
                    style: AppTextStyle.bodySemi.copyWith(
                        color: AppColors.primaryDark,
                        fontWeight: FontWeight.w500),
                  ),
                  BlocBuilder<UserBloc, UserState>(
                    builder: (context, state) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            state.showBalance ?? false
                                ? state.ngnSelected ?? false
                                    ? 'NGN 400,000.00'
                                    : 'USD ${(400000 / 740).toStringAsFixed(2).replaceAllMapped(reg, mathFunc)}'
                                : '*************',
                            style: AppTextStyle.headerThreeBold
                                .copyWith(color: AppColors.primaryDark),
                          ),
                          GestureDetector(
                            onTap: () {
                              context.read<UserBloc>().add(ShowBalanceEvent());
                              print((400000 / 740)
                                  .toString()
                                  .replaceAllMapped(reg, mathFunc));
                            },
                            child: Iconify(
                              state.showBalance ?? false
                                  ? Pajamas.eye
                                  : Pajamas.eye_slash,
                              color: AppColors.primaryDark.withOpacity(.5),
                            ),
                          )
                        ],
                      );
                    },
                  ),
                  Row(
                    children: [
                      BlocBuilder<UserBloc, UserState>(
                        builder: (context, state) {
                          return NGNUSDWidget(
                            inactiveColor: AppColors.primaryLight2,
                            activeColor: AppColors.primaryDark,
                            rateColor: AppColors.primaryLight2,
                            onNgnPressed: () {
                              context.read<UserBloc>().add(NGNSelectEvent());
                            },
                            onUsdPressed: () {
                              context.read<UserBloc>().add(USDSelectEvent());
                            },
                            ngnSelected: state.ngnSelected ?? false,
                            usdSelected: state.usdSelected ?? true,
                          );
                        },
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
