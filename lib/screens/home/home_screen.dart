import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_learning/constants/constants.dart';
import 'package:project_learning/widgets/custom_animated_container.dart';
import 'package:project_learning/widgets/item_banner.dart';
import 'package:project_learning/widgets/item_category.dart';
import 'package:project_learning/widgets/item_product.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Image.asset("assets/icons/icon.png"),
        ),
        centerTitle: true,
        title: Text(
          "Zabi-Store",
          style: Theme.of(context).textTheme.titleSmall?.copyWith(fontSize: 25),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 10),
            child: Badge(
              label: Text("10"),
              child: InkWell(
                onTap: () {},
                child: Icon(CupertinoIcons.bell, size: 29),
              ),
            ),
          ),
        ],
      ),
      // internal logic
      body: Stack(
        children: [
          ListView(
            children: [
              // Search Box for searching data
              Card(
                color: Colors.white,
                margin: EdgeInsets.all(15.0),
                elevation: 3,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search",
                    suffixIcon: Icon(Icons.filter_list),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(right: 2, left: 2, bottom: 5),
                child: SizedBox(
                  height: 200,
                  child: PageView(
                    onPageChanged: (value) {
                      setState(() {
                        currentIndex = value;
                      });
                    },
                    // physics: NeverScrollableScrollPhysics(),
                    children: [
                      for (String banner in banners) ItemBanner(image: banner),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 15,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 5,
                  children: [
                    for (int index = 0; index < banners.length; index++)
                     CustomAnimatedContainer(currentIndex: currentIndex, index: index)
                  ],
                ),
              ),
              SizedBox(height: 10),
              ListTile(
                title: Text(
                  "Categories",
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                trailing: TextButton(
                  onPressed: () {},
                  child: Text(
                    "SHOW ALL",

                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.indigo,
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 110,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  children: [
                    for (int index = 0; index < icons.length; index++)
                      ItemCategory(
                        image: icons[index],
                        text: text[index],
                        color: colors[index],
                      ),
                  ],
                ),
              ),
              SizedBox(),
              ListTile(
                title: Text(
                  "Products",
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                trailing: TextButton(
                  onPressed: () {},
                  child: Text(
                    "SHOW ALL",
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.indigo,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),

              Padding(
                padding: EdgeInsets.all(10),
                child: GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    for (int index = 0; index < productImages.length; index++)
                      ItemProduct(
                        image: productImages[index],
                        text: productTitles[index],
                        price: productPrices[index],
                      ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
