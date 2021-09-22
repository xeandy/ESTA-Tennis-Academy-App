import 'package:academy_app/screens/sign_up/widgets/body.dart';
import 'package:academy_app/widgets/responsive_layout.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Sign Up',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: "Muli",
            ),
          ),
        ),
        body: Responsive(
          mobile: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: SignUpBody(),
          ),
          tablet: SignUpBody(),
          desktop: SignUpBody(),
        ),
      ),
    );
  }
}
