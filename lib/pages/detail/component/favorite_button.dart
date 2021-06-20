import 'package:bagshop_ui_flutter_with_animation/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FavoriteButton extends StatefulWidget {
  // const FavoriteButton({Key? key}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
      child: Container(
        height: 32,
        width: 32,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: isFavorite ? Color(0xFFFF6464) : mTextLightColor,
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset('assets/icons/heart.svg'),
      ),
    );
  }
}
