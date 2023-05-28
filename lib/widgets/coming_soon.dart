import 'package:flutter/material.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 30,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60),
          border: const Border.fromBorderSide(
            BorderSide(color: Colors.white),
          )),
      child: const Center(
        child: Text(
          'Coming Soon',
          style: TextStyle(fontSize: 8, color: Colors.white),
        ),
      ),
    );
  }
}
