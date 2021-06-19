import 'package:bagshop_ui_flutter_with_animation/theme.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  // const Categories({ Key? key }) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["Hand Bag", "Jewellery", "Footwear", "Dresses"];
  // selected category item index
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: mDefaultPadding),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategoryItem(index),
        ),
      ),
    );
  }

  Widget buildCategoryItem(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: mDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: selectedIndex == index ? mTextColor : mTextLightColor,
              ),
            ),
            Container(
              height: 2,
              width: 30,
              margin: EdgeInsets.only(top: mDefaultPadding / 4),
              color:
                  selectedIndex == index ? Colors.black87 : Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}
