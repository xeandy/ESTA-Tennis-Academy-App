import 'package:flutter/material.dart';

class UnauthenticatedPaymentBody extends StatelessWidget {
  const UnauthenticatedPaymentBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'To proceed payment',
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
            },
            style: TextButton.styleFrom(
              primary: Colors.purpleAccent[700],
            ),
            child: Text(
              'Sign In or Sign Up',
              style: TextStyle(
                color: Colors.purpleAccent[700],
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
