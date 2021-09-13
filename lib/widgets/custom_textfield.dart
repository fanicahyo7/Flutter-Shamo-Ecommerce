import 'package:flutter/material.dart';
import 'package:flutter_shamo_ecommerce/theme.dart';

class CustomTextField extends StatelessWidget {
  final String title;
  final String hintText;
  final String iconUrl;
  final bool obsecured;

  const CustomTextField(
      {Key? key,
      required this.title,
      required this.iconUrl,
      this.hintText = '',
      this.obsecured = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: primaryTextStyle.copyWith(fontSize: 16),
          ),
          Container(
            margin: EdgeInsets.only(top: 12),
            padding: EdgeInsets.symmetric(horizontal: 16),
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: kBgColor2),
            child: Center(
              child: Row(
                children: [
                  Image.asset(
                    iconUrl,
                    width: 17,
                    height: 12,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: TextFormField(
                      obscureText: obsecured,
                      style: primaryTextStyle,
                      decoration: InputDecoration.collapsed(
                          hintText: hintText, hintStyle: subtitleTextStyle),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
