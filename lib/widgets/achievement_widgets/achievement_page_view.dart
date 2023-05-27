import 'package:ardilla_assessment/conts/app_colors.dart';
import 'package:ardilla_assessment/widgets/achievement_widgets/achievement_container.dart';
import 'package:ardilla_assessment/widgets/achievement_widgets/super_saver_widget.dart';
import 'package:ardilla_assessment/widgets/arrow_widget.dart';
import 'package:flutter/material.dart';

class AchievementPageView extends StatelessWidget {
  const AchievementPageView({Key? key, required this.pageController})
      : super(key: key);
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: PageView(
        controller: pageController,
        children: [
          const AchievementContainer(
              backgroundColor: Color(0xFFFEF6F8),
              topTitle: 'Rank',
              title: 'Cadet',
              titleTextColor: Color(0xFFE8356D),
              subtitle: 'Move up your Rank by completing transactions',
              alignment: Alignment.centerRight,
              rightImageUrl: 'assets/star_medal.png',
              rightPadding: EdgeInsets.only(right: 10)),
          AchievementContainer(
            backgroundColor: const Color(0xFFF9F9F9),
            topTitle: 'Badges',
            title: 'Beginner',
            titleTextColor: AppColors.primaryDark,
            subtitle: 'Move up your Badge by completing transactions',
            alignment: Alignment.topRight,
            backgroundImage: Image.asset('assets/stars_background.png'),
            rightImageUrl: 'assets/medal.png',
            rightPadding: const EdgeInsets.only(right: 10),
            smallBottomWidget: const SuperSaverWidget(),
          ),
          const AchievementContainer(
            backgroundColor: Color(0xFFF0F0FF),
            topTitle: 'Referrals',
            title: 'Refer & Earn',
            titleTextColor: AppColors.primaryDark,
            subtitle: 'Invite using your Kode Hex.',
            alignment: Alignment.bottomRight,
            rightImageUrl: 'assets/coin.png',
            rightPadding: EdgeInsets.zero,
            smallBottomWidget: ArrowWidget(text: 'Click here'),
            smallBottomWidgetPadding: EdgeInsets.only(bottom: 20),
          ),
          const AchievementContainer(
            backgroundColor: Color(0xFFF0F0FF),
            topTitle: 'Money Wise',
            title: 'Financial nuggets',
            titleTextColor: AppColors.primaryDark,
            subtitle:
                'Take a step towards financial literacy with financial advice from the best minds in the game.',
            alignment: Alignment.bottomRight,
            rightImageUrl: 'assets/account.png',
            rightPadding: EdgeInsets.zero,
            smallBottomWidget: ArrowWidget(text: 'Click here'),
            smallBottomWidgetPadding: EdgeInsets.only(bottom: 20),
          ),
        ],
      ),
    );
  }
}
