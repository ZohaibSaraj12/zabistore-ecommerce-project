import 'package:flutter/cupertino.dart';

class CustomScrollBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    AxisDirection direction = details.direction;

    // PageView me horizontal direction swap kar dete hain
    if (direction == AxisDirection.left) {
      direction = AxisDirection.left;
    } else if (direction == AxisDirection.right) {
      direction = AxisDirection.right;
    }

    return GlowingOverscrollIndicator(
      color: Color.fromARGB(255, 47, 46, 46), // apne desired color ka glow
      axisDirection: direction,
      showLeading: true,
      showTrailing: true,
      child: child,
    );
  }
}
