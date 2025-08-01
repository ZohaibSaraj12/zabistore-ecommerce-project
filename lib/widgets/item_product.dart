import 'package:flutter/material.dart';

class ItemProduct extends StatelessWidget {
  final String image;
  final String text;
  final String price;
  const ItemProduct({super.key, required this.image, required this.text, required this.price,});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFFFFFDE7),
      child: Column(
        spacing: 3,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image(
                image: NetworkImage(
                  image,
                ),
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsGeometry.only(
              left: 7,
              right: 6,
              top: 3,
              bottom: 2,
            ),
            child: Column(
              children: [
                Text(
                  text,
                  style: Theme.of(
                    context,
                  ).textTheme.titleSmall?.copyWith(fontSize: 12.5),
                ),
                SizedBox(height: 5),
                Divider(thickness: 3),
                Text(
                  "Price: $price",
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
