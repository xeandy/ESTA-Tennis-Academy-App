import 'package:flutter/material.dart';

import '../../../constants.dart';

class SignUpBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don\'t have an account?',
          style: TextStyle(
            color: kTextColor,
            fontSize: 14,
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/policies');
            },
            style: TextButton.styleFrom(),
            child: Text(
              'Sign Up',
              style: TextStyle(
                color: Colors.purpleAccent[700],
                fontWeight: FontWeight.w900,
                fontSize: 14,
              ),
            ),
          ),
        )
      ],
    );
  }
}
