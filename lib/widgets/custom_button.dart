import 'package:flutter/material.dart';
import 'package:flutter_shamo_ecommerce/theme.dart';

class CustomButton extends StatelessWidget {
  final Function() onTap;
  final String title;

  const CustomButton({Key? key, required this.onTap, this.title = ''})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
            color: kPrimaryColor, borderRadius: BorderRadius.circular(12)),
        child: Center(
          child: Text(
            title,
            style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
          ),
        ),
      ),
    );
  }
}
