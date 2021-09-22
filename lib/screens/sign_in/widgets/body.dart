import 'package:academy_app/screens/sign_in/widgets/form.dart';
import 'package:academy_app/screens/sign_in/widgets/reset_pswd.dart';
import 'package:academy_app/screens/sign_in/widgets/sign_up_btn.dart';
import 'package:academy_app/widgets/responsive_layout.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class SignInBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          children: [
            SizedBox(height: kDefaultPadding),
            Image.asset(
              'assets/images/sign_in_logo.png',
              filterQuality: FilterQuality.medium,
              height: Responsive.isMobile(context) ? 170 : 250,
            ),
            Text(
              'Welcome',
              style: TextStyle(
                color: Colors.black,
                fontSize: Responsive.isMobile(context) ? 25 : 60,
                fontWeight: FontWeight.w800,
              ),
            ),
            Text(
              "Sign in with your email and password",
              style: TextStyle(
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: kDefaultPadding * 1.2),
            SignInForm(),
            SizedBox(height: kDefaultPadding / 2),
            TextButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => ResetPswd()));
              },
              style: TextButton.styleFrom(),
              child: Text(
                'Forgot password?',
                style: TextStyle(
                  color: Colors.purpleAccent[700],
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                ),
              ),
            ),
            SizedBox(height: kDefaultPadding / 2),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/home');
              },
              style: TextButton.styleFrom(),
              child: Text(
                'Non-member info',
                style: TextStyle(
                  color: Colors.purpleAccent[700],
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: kDefaultPadding),
            SignUpBtn(),
          ],
        ),
      ),
    );
  }
}
