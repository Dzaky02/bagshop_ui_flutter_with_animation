import 'package:bagshop_ui_flutter_with_animation/models/Product.dart';
import 'package:bagshop_ui_flutter_with_animation/theme.dart';
import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: mDefaultPadding),
      child: Text(
        product.description,
        style: TextStyle(
          height: 1.5,
          wordSpacing: 1.5,
        ),
      ),
    );
  }
}
