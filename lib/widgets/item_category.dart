import 'package:flutter/material.dart';

class ItemCategory extends StatelessWidget {
  final String image;
  final String text;
  final Color color;
  const ItemCategory({
    super.key,
    required this.image,
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0, left: 15.0, top: 10.0),
      child: GestureDetector(
        onTap: () {
          debugPrint("Hello, world!");
        },
        child: Column(
          spacing: 5,
          children: [
            Container(
              height: 60,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(color: color, shape: BoxShape.circle),
              child: Image(image: AssetImage(image), color: Colors.white),
            ),
            Text(text, style: Theme.of(context).textTheme.titleSmall?.copyWith(
              fontSize: 13,
              fontWeight: FontWeight.w600
            ),),
          ],
        ),
      ),
    );
  }
}
