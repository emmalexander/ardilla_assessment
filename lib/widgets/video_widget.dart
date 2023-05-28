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
                      BorderSide(color: Color(0xFFE73F76)))),
            ),
          ),
          Image.asset(
            'assets/video.png',
            width: 335,
            height: 300,
          ),
        ],
      ),
    );
  }
}
