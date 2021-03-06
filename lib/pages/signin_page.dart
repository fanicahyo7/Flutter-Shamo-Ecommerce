import 'package:flutter/material.dart';
import 'package:flutter_shamo_ecommerce/pages/signup_page.dart';
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
      return CustomButton(
        title: 'Sign In',
        onTap: () {
          //Navigator.pushNamed(context, '/sign-up');
        },
      );
    }

    Widget buttonSignUp() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Don\'t have an account?',
            style: subtitleTextStyle.copyWith(fontSize: 12),
          ),
          SizedBox(
            width: 5,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/sign-up');
            },
            child: Text(
              'Sign up',
              style: secondaryTextStyle.copyWith(
                  fontSize: 12, color: kPrimaryColor),
            ),
          )
        ],
      );
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
              height: 50,
            ),
            textFieldEmail(),
            textFieldPassword(),
            SizedBox(
              height: 30,
            ),
            buttonSigIn(),
            Spacer(),
            buttonSignUp()
          ],
        ),
      ),
    );
  }
}
