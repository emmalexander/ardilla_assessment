import 'package:ardilla_assessment/conts/app_colors.dart';
import 'package:ardilla_assessment/widgets/achievement_widgets/achievement_page_view.dart';
import 'package:ardilla_assessment/widgets/cards/cards_page_view.dart';
import 'package:ardilla_assessment/widgets/chart_section/chart_container.dart';
import 'package:ardilla_assessment/widgets/explore/explore_section.dart';
import 'package:ardilla_assessment/widgets/investment_section/investment_page_view.dart';
import 'package:ardilla_assessment/widgets/my_app_bar.dart';
import 'package:ardilla_assessment/widgets/my_drawer.dart';
import 'package:ardilla_assessment/widgets/page_navigation_row.dart';
import 'package:ardilla_assessment/widgets/quick_links_section/quick_links_section.dart';
import 'package:ardilla_assessment/widgets/video_widget.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);
  static const id = 'dashboard_screen';
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  late PageController _pageController1;
  late PageController _pageController2;
  late PageController _pageController3;

  @override
  void initState() {
    _pageController1 = PageController();
    _pageController2 = PageController();
    _pageController3 = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController1.dispose();
    _pageController2.dispose();
    _pageController3.dispose();
    super.dispose();
  }

  void _onBackPressed(pageController) {
    if (pageController.page! > 0) {
      pageController.previousPage(
          duration: const Duration(milliseconds: 500), curve: Curves.ease);
    }
  }

  void _onForwardPressed(pageController) {
    if (pageController.page! < 2) {
      pageController.nextPage(
          duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: const MyDrawer(),
      appBar: const MyAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 250,
              child: CardsPageView(
                controller: _pageController1,
              ),
            ),
            Center(
              child: SmoothPageIndicator(
                controller: _pageController1,
                count: 3,
                onDotClicked: (page) {
                  _pageController1.animateToPage(page,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.ease);
                },
                effect: const SlideEffect(
                  dotHeight: 2,
                  dotWidth: 70,
                  dotColor: Colors.grey,
                  activeDotColor: AppColors.primary,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: QuickLinksSection(),
            ),
            const SizedBox(height: 20),
            const ChartContainer(),
            const SizedBox(height: 10),
            PageNavigationRow(
              onBackPressed: () {
                _onBackPressed(_pageController2);
              },
              onForwardPressed: () {
                _onForwardPressed(_pageController2);
              },
            ),
            SizedBox(
              height: 250,
              child: InvestmentPageView(
                pageController: _pageController2,
              ),
            ),
            const SizedBox(height: 50),
            SizedBox(
              height: 250,
              child: AchievementPageView(
                pageController: _pageController3,
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: SmoothPageIndicator(
                  controller: _pageController3,
                  count: 4,
                  effect: ExpandingDotsEffect(
                    spacing: 2,
                    radius: 50,
                    dotHeight: 6,
                    dotWidth: 6,
                    dotColor: AppColors.primary.withOpacity(.3),
                    activeDotColor: AppColors.primary,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Center(child: VideoWidget()),
            const SizedBox(height: 20),
            const ExploreSection()
          ],
        ),
      ),
    );
  }
}
