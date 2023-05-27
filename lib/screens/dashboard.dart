import 'package:ardilla_assessment/conts/app_colors.dart';
import 'package:ardilla_assessment/widgets/achievement_widgets/achievement_page_view.dart';
import 'package:ardilla_assessment/widgets/chart_container.dart';
import 'package:ardilla_assessment/widgets/investment_page_view.dart';
import 'package:ardilla_assessment/widgets/my_drawer.dart';
import 'package:ardilla_assessment/widgets/page_navigation_row.dart';
import 'package:ardilla_assessment/widgets/profile_row.dart';
import 'package:ardilla_assessment/widgets/quick_links_row.dart';
import 'package:ardilla_assessment/widgets/video_widget.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  late PageController _pageController1;
  late PageController _pageController2;
  late PageController _pageController3;
  List images = [
    Image.asset('assets/card_1.png'),
    Image.asset('assets/card_2.png'),
    Image.asset('assets/card_3.png'),
  ];

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      drawer: const MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 30),
              child: ProfileRow(),
            ),
            SizedBox(
              height: 250,
              child: PageView.builder(
                  itemCount: images.length,
                  controller: _pageController1,
                  itemBuilder: (context, index) {
                    return images[index];
                  }),
            ),
            Center(
              child: SmoothPageIndicator(
                controller: _pageController1,
                count: images.length,
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
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Quick Links',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryDark),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      QuickLinksRow(
                        imageUrl: 'assets/box_1.png',
                        text: 'SAN',
                      ),
                      QuickLinksRow(
                        imageUrl: 'assets/box_2.png',
                        text: 'Save',
                      ),
                      QuickLinksRow(
                        imageUrl: 'assets/box_3.png',
                        text: 'Learn',
                      ),
                      QuickLinksRow(
                        imageUrl: 'assets/box_4.png',
                        text: 'Payment',
                      ),
                    ],
                  )
                ],
              ),
            ),
            const ChartContainer(),
            const SizedBox(height: 10),
            PageNavigationRow(
              onBackPressed: () {
                if (_pageController2.page! > 0) {
                  _pageController2.previousPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInBack);
                }
              },
              onForwardPressed: () {
                if (_pageController2.page! < 2) {
                  _pageController2.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                }
              },
            ),
            SizedBox(
              height: 250,
              child: InvestmentPageView(
                pageController: _pageController2,
              ),
            ),
            SizedBox(height: 50),
            SizedBox(
              height: 240,
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
                  effect: const ExpandingDotsEffect(
                    spacing: 2,
                    radius: 50,
                    dotHeight: 6,
                    dotWidth: 6,
                    dotColor: Colors.grey,
                    activeDotColor: AppColors.primary,
                  ),
                ),
              ),
            ),
            VideoWidget(),
          ],
        ),
      ),
    );
  }
}
