import 'package:bagshop_ui_flutter_with_animation/models/Product.dart';
import 'package:bagshop_ui_flutter_with_animation/pages/detail/component/cart_counter.dart';
import 'package:bagshop_ui_flutter_with_animation/pages/detail/component/color_and_size.dart';
import 'package:bagshop_ui_flutter_with_animation/pages/detail/component/description.dart';
import 'package:bagshop_ui_flutter_with_animation/pages/detail/component/favorite_button.dart';
import 'package:bagshop_ui_flutter_with_animation/pages/detail/component/product_title_with_image.dart';
import 'package:bagshop_ui_flutter_with_animation/theme.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: size.height / 2,
                  margin: EdgeInsets.only(top: size.height / 2.6),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: mDefaultPadding,
                    right: mDefaultPadding,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(16),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ColorAndSize(product: product),
                      Description(product: product),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CartCounter(),
                          FavoriteButton(),
                        ],
                      ),
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product),
              ],
            )
          ],
        ),
      ),
    );
  }
}
