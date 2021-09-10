import 'package:flutter/material.dart';
import 'package:flutter_shamo_ecommerce/theme.dart';
import 'package:flutter_shamo_ecommerce/widgets/custom_button.dart';
import 'package:flutter_shamo_ecommerce/widgets/custom_textfield.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Login',
            style:
                primaryTextStyle.copyWith(fontSize: 24, fontWeight: semibold),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            'Sign In to Countinue',
            style: secondaryTextStyle,
          ),
        ],
      );
    }

    Widget textFieldEmail() {
      return CustomTextField(
        title: 'Email Address',
        iconUrl: 'assets/icon_email.png',
        hintText: 'Your Email Address',
      );
    }

    Widget textFieldPassword() {
      return CustomTextField(
        title: 'Password',
        iconUrl: 'assets/icon_password.png',
        hintText: 'Your Password',
        obsecured: true,
      );
    }

    Widget buttonSigIn() {
      return CustomButton();
    }

    return Scaffold(
      backgroundColor: kBgColor1,
      body: Container(
        margin: EdgeInsets.all(defaultmargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header(),
            SizedBox(
              height: 70,
            ),
            textFieldEmail(),
            SizedBox(
              height: 20,
            ),
            textFieldPassword(),
            SizedBox(
              height: 30,
            ),
            buttonSigIn()
          ],
        ),
      ),
    );
  }
}
