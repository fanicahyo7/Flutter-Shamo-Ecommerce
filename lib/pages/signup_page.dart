import 'package:flutter/material.dart';
import 'package:flutter_shamo_ecommerce/theme.dart';
import 'package:flutter_shamo_ecommerce/widgets/custom_button.dart';
import 'package:flutter_shamo_ecommerce/widgets/custom_textfield.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sign Up',
              style:
                  primaryTextStyle.copyWith(fontSize: 24, fontWeight: semibold),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              'Register and Happy Shoping',
              style: subtitleTextStyle,
            )
          ],
        ),
      );
    }

    Widget textFullName() {
      return CustomTextField(
        title: 'Full Name',
        iconUrl: 'assets/icon_name.png',
        hintText: 'Your Full Name',
      );
    }

    Widget textUserName() {
      return CustomTextField(
        title: 'Username',
        iconUrl: 'assets/icon_username.png',
        hintText: 'Your Username',
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

    Widget buttonSigUp() {
      return CustomButton(
        title: 'Sign Up',
        onTap: () {
          //Navigator.pushNamed(context, '/sign-up');
        },
      );
    }

    Widget buttonSignIn() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Already have an account?',
            style: subtitleTextStyle.copyWith(fontSize: 12),
          ),
          SizedBox(
            width: 5,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Text(
              'Sign In',
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
            textFullName(),
            textUserName(),
            textFieldEmail(),
            textFieldPassword(),
            SizedBox(
              height: 30,
            ),
            buttonSigUp(),
            Spacer(),
            buttonSignIn()
          ],
        ),
      ),
    );
  }
}
