import 'package:flutter/material.dart';

const mTextColor = Color(0xFF535353);
const mTextLightColor = Color(0xFFACACAC);

const mDefaultPadding = 20.0;

// Function
void buildSnackBar(BuildContext context, String message, Size size) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
      duration: const Duration(milliseconds: 1000),
      width: size.width * 0.7, // Width of the SnackBar.
      padding: const EdgeInsets.symmetric(
        horizontal: mDefaultPadding, // Inner padding for SnackBar content.
      ),
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
    ),
  );
}
