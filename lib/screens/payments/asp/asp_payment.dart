import 'package:academy_app/business_logic/payment/payment_cubit.dart';
import 'package:academy_app/business_logic/program_watcher/asp_drop_button/cubit/drop_button_cubit.dart';
import 'package:academy_app/business_logic/program_watcher/asp_drop_button1/cubit/drop_button_cubit.dart';
import 'package:academy_app/business_logic/program_watcher/asp_drop_button2/cubit/drop_button_cubit.dart';
import 'package:academy_app/business_logic/program_watcher/asp_drop_button3/cubit/drop_button_cubit.dart';
import 'package:academy_app/business_logic/program_watcher/program_watcher_cubit.dart';
import 'package:academy_app/screens/payments/asp/widget/drop_btn.dart';
import 'package:academy_app/screens/payments/asp/widget/drop_btn_1.dart';
import 'package:academy_app/screens/payments/asp/widget/drop_btn_2.dart';
import 'package:academy_app/screens/payments/asp/widget/drop_btn_3.dart';
import 'package:academy_app/screens/payments/asp/widget/drop_btn_4.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants.dart';

class AspPayment extends StatefulWidget {
  AspPayment({Key? key}) : super(key: key);

  @override
  _AspPaymentState createState() => _AspPaymentState();
}

class _AspPaymentState extends State<AspPayment> {
  bool isVisible = false;
  bool isVisible2 = false;
  bool isVisible3 = false;
  bool isVisible4 = false;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ProgramWatcherCubit>();
    final programWatcherState = context.watch<ProgramWatcherCubit>().state;
    final currentPaymentCubitState =
        context.select((PaymentCubit paymentCubit) => paymentCubit.state);
    final btn1State = context.watch<DropButtonCubit>().state;
    final btn2State = context.watch<DropButtonCubit1>().state;
    final btn3State = context.watch<DropButtonCubit2>().state;
    final btn4State = context.watch<DropButtonCubit3>().state;

    final total = programWatcherState.totalPrice +
        btn1State.price +
        btn2State.price +
        btn3State.price +
        btn4State.price;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Center(
          child: Text(
            'After School Program',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: BlocListener<PaymentCubit, PaymentState>(
        listener: (context, state) {
          if (state.isSuccesfull) {
            context.read<PaymentCubit>().updateProfileAsp(
                  programName: cubit.progName ?? '',
                  times: cubit.sessionValue ?? '',
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
            cubit.resetAspState();
            context.read<DropButtonCubit>().resetDropBtn();
            context.read<DropButtonCubit1>().resetDropBtn();
            context.read<DropButtonCubit2>().resetDropBtn();
            context.read<DropButtonCubit3>().resetDropBtn();
            setState(() {
              isVisible = false;
              isVisible2 = false;
              isVisible3 = false;
              isVisible4 = false;
            });
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('${state.stripeException}'),
              ),
            );
          } else if (state.paymentSheetData?['error'] != null) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content:
                    Text('Error code: ${state.paymentSheetData!['error']}'),
              ),
            );
          } else if (state.isNotComplete) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('For complete payment select program and times'),
              ),
            );
          } else {
            return;
          }
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: kDefaultPadding * 2,
            horizontal: kDefaultPadding,
          ),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    Column(
                      children: [
                        AspDropDownButton(),
                        SizedBox(height: kDefaultPadding),
                        isVisible == false
                            ? Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
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
                                      child: IconButton(
                                        padding: EdgeInsets.all(0),
                                        onPressed: () {
                                          setState(() {
                                            isVisible = true;
                                          });
                                        },
                                        icon: Icon(
                                          Icons.add,
                                        ),
                                        iconSize: 24,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: kDefaultPadding / 2),
                                  Text(
                                    'One more child',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              )
                            : Container(),
                      ],
                    ),
                    SizedBox(height: kDefaultPadding / 2),
                    Visibility(
                      visible: isVisible,
                      child: Column(
                        children: [
                          AspDropDownButton1(),
                          SizedBox(height: kDefaultPadding),
                          Container(
                            height: 40,
                            width: 40,
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
                              child: IconButton(
                                padding: EdgeInsets.all(0),
                                onPressed: () {
                                  setState(() {
                                    isVisible = false;
                                  });
                                  context
                                      .read<DropButtonCubit>()
                                      .clearDropButton();
                                },
                                icon: Icon(
                                  Icons.close,
                                ),
                                iconSize: 24,
                              ),
                            ),
                          ),
                          SizedBox(height: kDefaultPadding),
                          isVisible2 == false
                              ? Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
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
                                        child: IconButton(
                                          padding: EdgeInsets.all(0),
                                          onPressed: () {
                                            setState(() {
                                              isVisible2 = true;
                                            });
                                          },
                                          icon: Icon(
                                            Icons.add,
                                          ),
                                          iconSize: 24,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: kDefaultPadding / 2),
                                    Text(
                                      'One more child',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                )
                              : Container(),
                        ],
                      ),
                    ),
                    SizedBox(height: kDefaultPadding / 2),
                    Visibility(
                      visible: isVisible2,
                      child: Column(
                        children: [
                          AspDropDownButton2(),
                          SizedBox(height: kDefaultPadding),
                          Container(
                            height: 40,
                            width: 40,
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
                              child: IconButton(
                                padding: EdgeInsets.all(0),
                                onPressed: () {
                                  setState(() {
                                    isVisible2 = false;
                                  });
                                  context
                                      .read<DropButtonCubit1>()
                                      .clearDropButton();
                                },
                                icon: Icon(
                                  Icons.close,
                                ),
                                iconSize: 24,
                              ),
                            ),
                          ),
                          SizedBox(height: kDefaultPadding),
                          isVisible3 == false
                              ? Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
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
                                        child: IconButton(
                                          padding: EdgeInsets.all(0),
                                          onPressed: () {
                                            setState(() {
                                              isVisible3 = true;
                                            });
                                          },
                                          icon: Icon(
                                            Icons.add,
                                          ),
                                          iconSize: 24,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: kDefaultPadding / 2),
                                    Text(
                                      'One more child',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                )
                              : Container(),
                        ],
                      ),
                    ),
                    SizedBox(height: kDefaultPadding / 2),
                    Visibility(
                      visible: isVisible3,
                      child: Column(
                        children: [
                          AspDropDownButton3(),
                          SizedBox(height: kDefaultPadding),
                          Container(
                            height: 40,
                            width: 40,
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
                              child: IconButton(
                                padding: EdgeInsets.all(0),
                                onPressed: () {
                                  setState(() {
                                    isVisible3 = false;
                                  });
                                  context
                                      .read<DropButtonCubit2>()
                                      .clearDropButton();
                                },
                                icon: Icon(
                                  Icons.close,
                                ),
                                iconSize: 24,
                              ),
                            ),
                          ),
                          SizedBox(height: kDefaultPadding),
                          isVisible4 == false
                              ? Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
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
                                        child: IconButton(
                                          padding: EdgeInsets.all(0),
                                          onPressed: () {
                                            setState(() {
                                              isVisible4 = true;
                                            });
                                          },
                                          icon: Icon(
                                            Icons.add,
                                          ),
                                          iconSize: 24,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: kDefaultPadding / 2),
                                    Text(
                                      'One more child',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                )
                              : Container(),
                        ],
                      ),
                    ),
                    SizedBox(height: kDefaultPadding / 2),
                    Visibility(
                      visible: isVisible4,
                      child: Column(
                        children: [
                          AspDropDownButton4(),
                          SizedBox(height: kDefaultPadding),
                          Container(
                            height: 40,
                            width: 40,
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
                              child: IconButton(
                                padding: EdgeInsets.all(0),
                                onPressed: () {
                                  setState(() {
                                    isVisible4 = false;
                                  });
                                  context
                                      .read<DropButtonCubit3>()
                                      .clearDropButton();
                                },
                                icon: Icon(
                                  Icons.close,
                                ),
                                iconSize: 24,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: kDefaultPadding),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Total price',
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
                      child: Builder(
                        builder: (context) {
                          return Text(
                            '\$${total.toString()}',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: kDefaultPadding),
              ElevatedButton(
                onPressed: () {
                  if (isVisible) {
                    context.read<PaymentCubit>().addProgram(
                          programName: btn1State.programName!,
                          times: btn1State.sessionValue!,
                          price: btn1State.price,
                          userData: currentPaymentCubitState.userData,
                        );
                  }
                  if (isVisible2) {
                    context.read<PaymentCubit>().addProgram(
                          programName: btn2State.programName!,
                          times: btn2State.sessionValue!,
                          price: btn2State.price,
                          userData: currentPaymentCubitState.userData,
                        );
                  }
                  if (isVisible3) {
                    context.read<PaymentCubit>().addProgram(
                          programName: btn3State.programName!,
                          times: btn3State.sessionValue!,
                          price: btn3State.price,
                          userData: currentPaymentCubitState.userData,
                        );
                  }
                  if (isVisible4) {
                    context.read<PaymentCubit>().addProgram(
                          programName: btn4State.programName!,
                          times: btn4State.sessionValue!,
                          price: btn4State.price,
                          userData: currentPaymentCubitState.userData,
                        );
                  }

                  context.read<PaymentCubit>().initPaymentSheet(
                        programName: cubit.progName ?? '',
                        userData: currentPaymentCubitState.userData,
                        totalAmount: total,
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
        ),
      ),
    );
  }
}
