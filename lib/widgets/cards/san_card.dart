import 'package:ardilla_assessment/blocs/user_bloc.dart';
import 'package:ardilla_assessment/conts/app_colors.dart';
import 'package:ardilla_assessment/conts/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:iconify_flutter/icons/pajamas.dart';

class SANCard extends StatelessWidget {
  const SANCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(20),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: [
            Align(
                alignment: Alignment.topLeft,
                child: Image.asset('assets/Ellipse_11.png')),
            Align(
                alignment: Alignment.bottomRight,
                child: Image.asset('assets/Ellipse_12.png')),
            Image.asset('assets/Group_1.png'),
            Image.asset('assets/Rectangle_1.png'),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'SAN',
                        style: AppTextStyle.bodySemi.copyWith(
                            color: AppColors.white,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4, horizontal: 8),
                        decoration: BoxDecoration(
                            color: AppColors.secondary,
                            borderRadius: BorderRadius.circular(60)),
                        child: Text(
                          '+10.00%',
                          style: AppTextStyle.vTinyTextBold
                              .copyWith(color: AppColors.white),
                        ),
                      )
                    ],
                  ),
                  BlocBuilder<UserBloc, UserState>(
                    builder: (context, state) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            state.showBalance ?? false
                                ? 'NGN 100,000.00'
                                : '*************',
                            style: AppTextStyle.headerThreeBold.copyWith(
                              color: AppColors.white,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              context.read<UserBloc>().add(ShowBalanceEvent());
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
                  Text('**********',
                      style: AppTextStyle.headerFour.copyWith(
                        fontWeight: FontWeight.w500,
                        color: AppColors.white,
                      )),
                  Wrap(
                    spacing: 10,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Text('Generate Account Number',
                          style: AppTextStyle.tinyText.copyWith(
                            fontWeight: FontWeight.w500,
                            color: AppColors.white,
                          )),
                      const Iconify(
                        MaterialSymbols.arrow_circle_right,
                        color: AppColors.white,
                        size: 16,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
