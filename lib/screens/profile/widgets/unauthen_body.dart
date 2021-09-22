import 'package:flutter/material.dart';

class UnauthenticatedProfileBody extends StatelessWidget {
  const UnauthenticatedProfileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'To use this feature',
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/');
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
