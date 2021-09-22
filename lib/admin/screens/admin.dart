import 'package:academy_app/constants.dart';
import 'package:flutter/material.dart';

class AdminHome extends StatelessWidget {
  const AdminHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin  Home'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50),
              Text(
                'Welcome Admin!',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: size.width / 3),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/home');
                },
                child: Text('Navigate to Home'),
                style: TextButton.styleFrom(
                  primary: Colors.purpleAccent[700],
                  textStyle: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(height: kDefaultPadding),
              TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.purpleAccent[700],
                  textStyle: TextStyle(
                    fontSize: 20,
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/adminPanel');
                },
                child: Text('Navigate to Admin Panel'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
