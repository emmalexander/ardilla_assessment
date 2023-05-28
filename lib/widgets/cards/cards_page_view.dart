import 'package:ardilla_assessment/widgets/cards/dilla_card.dart';
import 'package:ardilla_assessment/widgets/cards/san_card.dart';
import 'package:ardilla_assessment/widgets/cards/total_funds.dart';
import 'package:flutter/material.dart';

class CardsPageView extends StatelessWidget {
  const CardsPageView({Key? key, required this.controller}) : super(key: key);
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      children: const [
        SANCard(),
        DillaCard(),
        TotalFunds(),
      ],
    );
  }
}
