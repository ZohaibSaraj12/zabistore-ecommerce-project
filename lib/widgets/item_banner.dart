import 'package:flutter/cupertino.dart';

class ItemBanner extends StatelessWidget {
  final String image;
  const ItemBanner({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image(image: AssetImage(image), fit: BoxFit.cover,),
      ),
    );
  }
}
