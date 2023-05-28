import 'package:flutter/material.dart';

class ExploreWidget extends StatelessWidget {
  const ExploreWidget({Key? key, required this.title, required this.subtitle})
      : super(key: key);
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
                fontWeight: FontWeight.w600, color: Colors.white, fontSize: 17),
          ),
          Text(
            subtitle,
            style: const TextStyle(color: Colors.white, fontSize: 10),
          ),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.white),
                backgroundColor: Colors.transparent),
            child: const Text(
              'Coming Soon',
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
          )
        ],
      ),
    );
  }
}
