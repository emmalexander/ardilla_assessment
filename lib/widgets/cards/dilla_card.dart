import 'package:ardilla_assessment/blocs/user_bloc.dart';
import 'package:ardilla_assessment/conts/app_colors.dart';
import 'package:ardilla_assessment/conts/text_styles.dart';
import 'package:ardilla_assessment/widgets/buttons/app_filled_button.dart';
import 'package:ardilla_assessment/widgets/cards/ngn_usd_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/pajamas.dart';
//import 'package:intl/intl.dart';

class DillaCard extends StatelessWidget {
  const DillaCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // NumberFormat currency(context) {
    //   //Locale locale = Localizations.localeOf(context);
    //   var format =
    //       NumberFormat.simpleCurrency(locale: Platform.localeName, name: 'NGN');
    //   // print(format.currencySymbol);
    //   return format;
    // }
    // TODO Add the slant shadow

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
                  Text(
                    'Dilla Wallet',
                    style: AppTextStyle.bodySemi.copyWith(
                        color: AppColors.white, fontWeight: FontWeight.w500),
                  ),
                  BlocBuilder<UserBloc, UserState>(
                    builder: (context, state) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            state.showBalance ?? false
                                ? 'USD 10,000.00'
                                : '*************',
                            style: AppTextStyle.headerThreeBold
                                .copyWith(color: Colors.white),
                          ),
                          GestureDetector(
                            onTap: () {
                              context.read<UserBloc>().add(ShowBalanceEvent());
                            },
                            child: Iconify(
                              state.showBalance ?? false
                                  ? Pajamas.eye
                                  : Pajamas.eye_slash,
                              color: Colors.white,
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
                              context.read<UserBloc>().add(NGNSelectEvent());
                            },
                            onUsdPressed: () {
                              context.read<UserBloc>().add(USDSelectEvent());
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
    );
  }
}
