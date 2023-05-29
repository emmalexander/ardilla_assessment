import 'package:flutter/material.dart';

class PageNavigationRow extends StatelessWidget {
  const PageNavigationRow(
      {Key? key, required this.onBackPressed, required this.onForwardPressed})
      : super(key: key);
  final Function() onBackPressed;
  final Function() onForwardPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GestureDetector(
              onTap: onBackPressed,
              child: const Icon(
                Icons.arrow_back_ios,
                size: 17,
              )),
          const SizedBox(width: 15),
          GestureDetector(
            onTap: onForwardPressed,
            child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        color: Colors.grey.shade200,
                        offset: const Offset(-5, 6),
                      ),
                    ]),
                child: const Icon(Icons.arrow_forward_ios)),
          )
        ],
      ),
    );
  }
}
