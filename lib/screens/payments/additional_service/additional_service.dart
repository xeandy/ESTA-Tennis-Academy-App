import 'dart:ui';
import 'package:academy_app/business_logic/payment/payment_cubit.dart';
import 'package:academy_app/business_logic/program_watcher/program_watcher_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants.dart';

class AdditionalService extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final selectedState = context.select(
        (ProgramWatcherCubit programWatcherCubit) => programWatcherCubit.state);
    final cubit = context.read<ProgramWatcherCubit>();
    final currentPaymentCubitState =
        context.select((PaymentCubit paymentCubit) => paymentCubit.state);
    final programWatcherState = context.watch<ProgramWatcherCubit>().state;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          'Additional Service Payment',
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
          ),
        ),
      ),
      body: BlocListener<PaymentCubit, PaymentState>(
        listener: (context, state) {
          if (state.isSuccesfull) {
            context.read<PaymentCubit>().updateProfileAdtService(
                  ptlTimes: programWatcherState.ptlTimes,
                  pflTimes: programWatcherState.pflTimes,
                  price: programWatcherState.totalPrice,
                  userData: currentPaymentCubitState.userData,
                );
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Payment succesfully completed'),
              ),
            );
            Future.delayed(Duration(seconds: 1), () {
              Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
            });
          } else if (state.isStripeException) {
            cubit.resetAdtServiceState();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Stripe: ${state.stripeException}'),
              ),
            );
          } else if (state.paymentSheetData?['error'] != null) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content:
                    Text('Error code: ${state.paymentSheetData!['error']}'),
              ),
            );
          } else {
            return;
          }
        },
        child: BlocBuilder<ProgramWatcherCubit, ProgramWatcherState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                vertical: kDefaultPadding * 2,
                horizontal: kDefaultPadding,
              ),
              child: Column(
                children: [
                  Text(
                    'Private Tennis Lessons',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: kDefaultPadding),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.purpleAccent[700]!,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Radio<int>(
                              activeColor: Colors.purpleAccent[700],
                              value: 1,
                              groupValue: selectedState.ptlGroupValue,
                              onChanged: (value) {
                                cubit.ptlRadioBtn(
                                    value!, state.ptl.price5!, '5');
                              },
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 3),
                              child: Text(
                                '5 lessons',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Radio<int>(
                              activeColor: Colors.purpleAccent[700],
                              value: 2,
                              groupValue: selectedState.ptlGroupValue,
                              onChanged: (value) {
                                cubit.ptlRadioBtn(
                                  value!,
                                  state.ptl.price10!,
                                  '10',
                                );
                              },
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 3),
                              child: Text(
                                '10 lessons',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: kDefaultPadding),
                  Divider(),
                  SizedBox(height: kDefaultPadding),
                  Text(
                    'Private Fitness Lessons',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: kDefaultPadding),
                  Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: kDefaultPadding * 4),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.purpleAccent[700]!,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Radio<int>(
                              activeColor: Colors.purpleAccent[700],
                              value: 1,
                              groupValue: selectedState.pflGroupValue,
                              onChanged: (value) {
                                cubit.pflRadioBtn(
                                  value!,
                                  state.pfl.price10!,
                                  '10',
                                );
                              },
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 3),
                              child: Text(
                                '10 lessons',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: kDefaultPadding / 2),
                  TextButton(
                    onPressed: () {
                      cubit.unselectRadoBtn();
                    },
                    style: TextButton.styleFrom(
                        side: BorderSide(
                          color: Colors.purpleAccent[700]!,
                          width: 2,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                        )),
                    child: Text(
                      'Unselect',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  SizedBox(height: kDefaultPadding / 2),
                  Divider(),
                  SizedBox(height: kDefaultPadding / 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Price',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: kDefaultPadding,
                      ),
                      Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.purpleAccent[700]!,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            '\$${state.totalPrice.toString()}',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: kDefaultPadding / 2),
                  Divider(),
                  SizedBox(height: kDefaultPadding / 2),
                  ElevatedButton(
                    onPressed: () {
                      context.read<PaymentCubit>().initPaymentSheet(
                            programName: 'Additional Service',
                            userData: currentPaymentCubitState.userData,
                            totalAmount: state.totalPrice,
                          );
                    },
                    child: Text(
                      'Pay',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.purpleAccent[700],
                      elevation: 2,
                      minimumSize: Size(200, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
