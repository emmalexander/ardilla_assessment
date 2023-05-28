import 'package:ardilla_assessment/widgets/investment_section/investment_container.dart';
import 'package:flutter/material.dart';

class InvestmentPageView extends StatelessWidget {
  const InvestmentPageView({Key? key, required this.pageController})
      : super(key: key);
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: const [
        InvestmentContainer(
            blurUrl: 'assets/blur_1.png',
            imageUrl: 'assets/investment_1.png',
            title: 'Unprecedented access to investment opportunities',
            percentage: '20',
            arrowText: 'Start Investing'),
        InvestmentContainer(
            blurUrl: 'assets/blur_2.png',
            imageUrl: 'assets/investment_2.png',
            title: 'Build your savings the right way',
            percentage: '12',
            arrowText: 'Start Investing'),
        InvestmentContainer(
            blurUrl: 'assets/blur_3.png',
            imageUrl: 'assets/investment_3.png',
            title: 'Insurance policies you can trust',
            percentage: '12',
            arrowText: 'Make your first claim'),
      ],
    );
  }
}
