import 'package:bagshop_ui_flutter_with_animation/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppBar(context, size),
    );
  }

  AppBar buildAppBar(BuildContext context, Size size) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          buildSnackBar(context, "Back Button Clicked", size);
        },
        icon: SvgPicture.asset("assets/icons/back.svg"),
      ),
      actions: [
        IconButton(
          onPressed: () {
            buildSnackBar(context, "Search Button Clicked", size);
          },
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
            color: mTextColor, // by default our icon color is white
          ),
        ),
        IconButton(
          onPressed: () {
            buildSnackBar(context, "Chart Button Clicked", size);
          },
          icon: SvgPicture.asset(
            "assets/icons/cart.svg",
            color: mTextColor, // by default our icon color is white
          ),
        ),
        SizedBox(width: mDefaultPadding / 2),
      ],
    );
  }
}
