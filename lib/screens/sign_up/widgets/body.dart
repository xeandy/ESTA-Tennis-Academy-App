import 'package:academy_app/screens/sign_up/widgets/form.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class SignUpBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: Column(
            children: [
              SizedBox(height: kDefaultPadding * 2),
              Text(
                'Register Account',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: kDefaultPadding / 2),
              Text(
                'Complete register form',
                style: TextStyle(
                  fontSize: 12,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: kDefaultPadding),
              SignUpForm(),
              // SignUpForm(),
            ],
          ),
        ),
      ),
    );
  }
}
