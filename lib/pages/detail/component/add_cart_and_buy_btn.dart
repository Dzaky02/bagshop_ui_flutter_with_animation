import 'package:bagshop_ui_flutter_with_animation/models/Product.dart';
import 'package:bagshop_ui_flutter_with_animation/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddCartAndBuyButton extends StatelessWidget {
  const AddCartAndBuyButton({
    Key? key,
    required this.size,
    required this.product,
  }) : super(key: key);

  final Size size;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        OutlinedButton(
          onPressed: () => buildSnackBar(
              context, 'Add product to cart', size),
          style: OutlinedButton.styleFrom(
            primary: product.color,
            padding: const EdgeInsets.symmetric(
                vertical: mDefaultPadding / 1.5),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(18),
              ),
            ),
            side: BorderSide(width: 1, color: product.color),
          ),
          child: SvgPicture.asset(
            'assets/icons/add_to_cart.svg',
            color: product.color,
          ),
        ),
        SizedBox(
          width: mDefaultPadding,
        ),
        Expanded(
          child: ElevatedButton(
              onPressed: () => buildSnackBar(
                  context, 'Buy a ${product.title}', size),
              style: ElevatedButton.styleFrom(
                primary: product.color,
                padding: const EdgeInsets.symmetric(
                    vertical: mDefaultPadding / 1.5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
              child: Text(
                'Buy Now'.toUpperCase(),
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              )),
        )
      ],
    );
  }
}
