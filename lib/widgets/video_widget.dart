import 'package:ardilla_assessment/conts/app_colors.dart';
import 'package:ardilla_assessment/conts/text_styles.dart';
import 'package:flutter/material.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 260,
      child: Stack(
        children: [
          Positioned(
            right: 0,
            bottom: 0,
            child: Container(
              width: 330,
              height: 210,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: const Border.fromBorderSide(
                      BorderSide(color: AppColors.secondary))),
            ),
          ),
          Image.asset(
            'assets/video.png',
            width: 335,
            height: 300,
          ),
          Positioned(
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'CEO, Mrs Oyinye',
                    style: AppTextStyle.tinyTextBold
                        .copyWith(color: AppColors.white),
                  ),
                  Text(
                    'What is Ardila and it benefits?',
                    style:
                        AppTextStyle.vTinyText.copyWith(color: AppColors.white),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
