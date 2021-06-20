import 'package:bagshop_ui_flutter_with_animation/models/Product.dart';
import 'package:bagshop_ui_flutter_with_animation/pages/detail/component/color_options.dart';
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
                    color: Colors.white70,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(16),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Color'),
                              ColorOptions(),
                            ],
                          ),
                          Column(
                            children: [],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: mDefaultPadding,
                      ),
                      Text(product.description)
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
