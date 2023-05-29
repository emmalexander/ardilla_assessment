import 'package:ardilla_assessment/conts/app_colors.dart';
import 'package:ardilla_assessment/widgets/circle_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'introduction.dart';

/// A IntroScreen Class.

class IntroScreenOnboarding extends StatefulWidget {
  final List<Introduction>? introductionList;
  final Color? backgroudColor;
  final Color? foregroundColor;
  final TextStyle? skipTextStyle;

  /// Callback on Skip Button Pressed
  final Function()? onTapSkipButton;
  const IntroScreenOnboarding({
    Key? key,
    this.introductionList,
    this.onTapSkipButton,
    this.backgroudColor,
    this.foregroundColor,
    this.skipTextStyle = const TextStyle(fontSize: 20),
  }) : super(key: key);

  @override
  State<IntroScreenOnboarding> createState() => _IntroScreenOnboardingState();
}

class _IntroScreenOnboardingState extends State<IntroScreenOnboarding> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  double progressPercent = 0;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          color:
              widget.backgroudColor ?? Theme.of(context).colorScheme.background,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      alignment: Alignment.topRight,
                      child: TextButton(
                        onPressed: widget.onTapSkipButton,
                        child: Text('Skip', style: widget.skipTextStyle),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: SizedBox(
                    height: 550.0,
                    child: PageView(
                      physics: const ClampingScrollPhysics(),
                      controller: _pageController,
                      onPageChanged: (int page) {
                        setState(() {
                          _currentPage = page;
                        });
                      },
                      children: widget.introductionList!,
                    ),
                  ),
                ),
                //                Row(
                //                  mainAxisAlignment: MainAxisAlignment.center,
                //                  children: _buildPageIndicator(),
                //                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: List.generate(4, (indexDots) {
                          //scrolling Dots
                          return Container(
                            margin: const EdgeInsets.only(right: 1),
                            height: 7,
                            width: _currentPage == indexDots ? 25 : 7,
                            decoration: BoxDecoration(
                              color: _currentPage == indexDots
                                  ? Theme.of(context).primaryColor
                                  : indexDots - _currentPage == 2
                                      ? Theme.of(context)
                                          .primaryColor
                                          .withOpacity(.1)
                                      : _currentPage - indexDots == 2
                                          ? Theme.of(context)
                                              .primaryColor
                                              .withOpacity(.1)
                                          : indexDots - _currentPage == 3
                                              ? Theme.of(context)
                                                  .primaryColor
                                                  .withOpacity(.05)
                                              : _currentPage - indexDots == 3
                                                  ? Theme.of(context)
                                                      .primaryColor
                                                      .withOpacity(.05)
                                                  : Theme.of(context)
                                                      .primaryColor
                                                      .withOpacity(.3),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          );
                        }),
                      ),
                      _customProgress(),
                    ],
                  ),
                ),
                //_buildNextButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

//  Widget _buildNextButton() {
//    return (_currentPage != widget.introductionList.length - 1
//        ? Expanded(
//      child: Align(
//        alignment: FractionalOffset.bottomRight,
//        child: FlatButton(
//          onPressed: () {
//            _pageController.nextPage(
//              duration: Duration(milliseconds: 500),
//              curve: Curves.ease,
//            );
//          },
//          child: Row(
//            mainAxisAlignment: MainAxisAlignment.center,
//            mainAxisSize: MainAxisSize.min,
//            children: <Widget>[
////                    Text(
////                      'Next',
////                      style: TextStyle(
////                        color: Colors.black,
////                        fontSize: 22.0,
////                      ),
////                    ),
//            ],
//          ),
//        ),
//      ),
//    )
//        : Expanded(
//      child: Align(
//        alignment: FractionalOffset.bottomRight,
//        child: FlatButton(
//          onPressed: () {
//            print('Start');
//          },
//          child: Row(
//            mainAxisAlignment: MainAxisAlignment.center,
//            mainAxisSize: MainAxisSize.min,
//            children: <Widget>[
////                    Text(
////                      'Start',
////                      style: TextStyle(
////                        color: Colors.black,
////                        fontSize: 22.0,
////                      ),
////                    ),
//            ],
//          ),
//        ),
//      ),
//    ));
//  }

//  Widget _indicator(bool isActive) {
//    return AnimatedContainer(
//      duration: Duration(milliseconds: 150),
//      margin: EdgeInsets.symmetric(horizontal: 8.0),
//      height: 8.0,
//      width: isActive ? 24 : 16,
//      decoration: BoxDecoration(
//        color: isActive ? Color(0xFF7B51D3) : Colors.grey,
//        borderRadius: BorderRadius.all(Radius.circular(10)),
//      ),
//    );
//  }

//  List<Widget> _buildPageIndicator() {
//    List<Widget> list = [];
//    for (int i = 0; i < widget.introductionList.length; i++) {
//      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
//    }
//    return list;
//  }

  Widget _customProgress() {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: 80,
          height: 80,
          child: CircleProgressBar(
            backgroundColor: AppColors.primary.withOpacity(.1),
            foregroundColor:
                widget.foregroundColor ?? Theme.of(context).primaryColor,
            value: ((_currentPage + 1) * 1.0 / widget.introductionList!.length),
          ),
        ),
        Container(
          height: 55,
          width: 55,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: (widget.foregroundColor ?? Theme.of(context).primaryColor),
          ),
          child: IconButton(
            onPressed: () {
              _currentPage != widget.introductionList!.length - 1
                  ? _pageController.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.ease,
                    )
                  : widget.onTapSkipButton!();
            },
            icon: const Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
            iconSize: 25,
          ),
        )
      ],
    );
  }
}
