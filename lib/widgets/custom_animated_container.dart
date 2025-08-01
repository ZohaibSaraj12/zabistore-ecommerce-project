import 'package:flutter/material.dart';
class CustomAnimatedContainer extends StatelessWidget {
  final int currentIndex;
  final int index;
  const CustomAnimatedContainer({super.key, required this.currentIndex, required this.index});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
                        curve: Curves.easeInOut,
                        duration: Duration(milliseconds: 300),
                        height: currentIndex == index ? 10 : 8,
                        width: currentIndex == index ? 70 : 8,
                        decoration: BoxDecoration(
                          color: currentIndex == index
                              ? Color(0xFFFFB300)
                              : Colors.grey,
                          shape: BoxShape.rectangle,

                          borderRadius: BorderRadius.circular(13.0),
                          border: Border.all(color: Colors.black, width: 1.2),
                        ),
                      );
  }
}