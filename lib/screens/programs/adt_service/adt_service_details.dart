import 'package:academy_app/business_logic/check_auth/check_auth_cubit.dart';
import 'package:academy_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdtServiceDetails extends StatelessWidget {
  const AdtServiceDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Additional Service'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(kDefaultPadding),
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        'Private Tennis Lessons',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Text(
                      '''ESTA offers private lessons to kids and adults. Semi private lessons
      are also available, up to 2 people per lesson, same rates.''',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black),
                    ),
                    SizedBox(height: kDefaultPadding / 2),
                    Text(
                      'Rates',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Coach Eduard Khan',
                              style: TextStyle(color: Colors.black),
                            ),
                            Text(
                              'Coach David Barragan',
                              style: TextStyle(color: Colors.black),
                            ),
                            Text(
                              'Coach Kevin Brandt',
                              style: TextStyle(color: Colors.black),
                            ),
                            Text(
                              'Coach Mavlon Kuchkarov',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                        SizedBox(width: kDefaultPadding),
                        Column(
                          children: [
                            Text(
                              '\$75 / 1 hour',
                              style: TextStyle(color: Colors.black),
                            ),
                            Text(
                              '\$75 / 1 hour',
                              style: TextStyle(color: Colors.black),
                            ),
                            Text(
                              '\$75 / 1 hour',
                              style: TextStyle(color: Colors.black),
                            ),
                            Text(
                              '\$75 / 1 hour',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: kDefaultPadding / 2),
                    Text(
                      'Special ESTA packages',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          '5 lessons - \$325',
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(
                          '10 lessons - \$600',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: kDefaultPadding),
              Divider(),
              Container(
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        'Private Fitness Lessons',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Text(
                      '''ESTA offers private fitness lessons with NASM certified Coach Alex Ananchenkov.''',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black),
                    ),
                    SizedBox(height: kDefaultPadding / 2),
                    Text(
                      'Rates',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          '1 hour - \$45',
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(
                          '30 min - \$35',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(height: kDefaultPadding / 2),
                    Text(
                      'Special ESTA package',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '10 hours - \$325',
                      style: TextStyle(color: Colors.black),
                    ),
                    SizedBox(height: kDefaultPadding / 2),
                    BlocBuilder<CheckAuthCubit, CheckAuthState>(
                      builder: (context, state) {
                        return state.maybeMap(
                          orElse: () => Container(),
                          unauthenticated: (_) => Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'For proceed payment',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.pushReplacementNamed(
                                      context, '/policies');
                                },
                                child: Text(
                                  'Sign Up',
                                  style: TextStyle(
                                    color: Colors.purpleAccent[700],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          authenticated: (_) => Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Center(
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pushReplacementNamed(
                                      context, '/adtService');
                                },
                                child: Text(
                                  'Payment',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.purpleAccent[700],
                                  elevation: 2,
                                  minimumSize: Size(150, 50),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(22),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: kDefaultPadding),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
