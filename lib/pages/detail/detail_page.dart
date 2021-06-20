import 'package:bagshop_ui_flutter_with_animation/models/Product.dart';
import 'package:bagshop_ui_flutter_with_animation/pages/detail/component/body.dart';
import 'package:bagshop_ui_flutter_with_animation/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context, size),
      body: Body(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context, Size size) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: SvgPicture.asset(
          'assets/icons/back.svg',
          color: Colors.white70,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () => buildSnackBar(context, 'Search Clicked', size),
          icon: SvgPicture.asset(
            'assets/icons/search.svg',
            color: Colors.white70,
          ),
        ),
        IconButton(
          onPressed: () => buildSnackBar(context, 'Chart Clicked', size),
          icon: SvgPicture.asset(
            'assets/icons/cart.svg',
            color: Colors.white70,
          ),
        ),
        SizedBox(width: mDefaultPadding / 2),
      ],
    );
  }
}
