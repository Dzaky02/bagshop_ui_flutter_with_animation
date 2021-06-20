import 'package:bagshop_ui_flutter_with_animation/theme.dart';
import 'package:flutter/material.dart';

class CartCounter extends StatefulWidget {
  // const CartCounter({Key? key}) : super(key: key);

  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int itemCount = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutlinedButton(Icons.remove, () {
          if (itemCount > 1) {
            setState(() {
              itemCount--;
            });
          }
        }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: mDefaultPadding / 2),
          child: Text(
            itemCount.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        buildOutlinedButton(Icons.add, () {
          setState(() {
            itemCount++;
          });
        }),
      ],
    );
  }

  SizedBox buildOutlinedButton(IconData icon, VoidCallback onPress) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlinedButton(
        onPressed: onPress,
        child: Icon(
          icon,
          color: mTextColor,
        ),
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13),
          ),
          padding: EdgeInsets.zero,
        ),
      ),
    );
  }
}
