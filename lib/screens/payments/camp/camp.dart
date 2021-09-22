import 'package:academy_app/business_logic/payment/payment_cubit.dart';
import 'package:academy_app/business_logic/program_watcher/program_watcher_cubit.dart';
import 'package:academy_app/screens/payments/camp/widgets/add_fitness.dart';
import 'package:academy_app/screens/payments/camp/widgets/full_day_btn.dart';
import 'package:academy_app/screens/payments/camp/widgets/radio_list_column.dart';
import 'package:academy_app/screens/payments/camp/widgets/select_fitness_times.dart';
import 'package:academy_app/screens/payments/camp/widgets/select_group.dart';
import 'package:academy_app/screens/payments/camp/widgets/select_times.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants.dart';

class CampPayment extends StatelessWidget {
  const CampPayment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ProgramWatcherCubit>();
    final programWatcherState = context.watch<ProgramWatcherCubit>().state;
    final selectedState = context.select(
        (ProgramWatcherCubit programWatcherCubit) => programWatcherCubit.state);
    final currentPaymentCubitState =
        context.select((PaymentCubit paymentCubit) => paymentCubit.state);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          'Esta Camp Payment',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: BlocListener<PaymentCubit, PaymentState>(
        listener: (context, state) {
          if (state.isSuccesfull) {
            context.read<PaymentCubit>().updateProfileCamp(
                  groupName: cubit.campProgramvalue ?? '',
                  times: cubit.sessionValue ?? '',
                  price: programWatcherState.totalPrice,
                  fitness: programWatcherState.isFitness,
                  fitnessTimes: cubit.fitnessSessionValue ?? '',
                  fullDay: programWatcherState.isFullDay,
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
            cubit.resetCampState();
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
          } else {
            return;
          }
        },
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: kDefaultPadding, vertical: kDefaultPadding),
            child: Column(
              children: [
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
                  child: RadioListColumn(),
                ),
                SizedBox(height: kDefaultPadding),
                GroupDropDownButton(cubit: cubit),
                SizedBox(height: kDefaultPadding),
                SelectTimesDropDownButton(cubit: cubit),
                SizedBox(height: kDefaultPadding),
                AddFitnessButton(selectedState: selectedState, cubit: cubit),
                SizedBox(height: kDefaultPadding),
                SelectFitnessTimesDropBtn(
                    selectedState: selectedState, cubit: cubit),
                FullDayButton(selectedState: selectedState, cubit: cubit),
                SizedBox(height: kDefaultPadding * 2),
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
                        child: Builder(
                          builder: (context) {
                            final state =
                                context.watch<ProgramWatcherCubit>().state;
                            return Text(
                              '\$${state.totalPrice.toString()}',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: kDefaultPadding * 2),
                ElevatedButton(
                  onPressed: () {
                    context.read<PaymentCubit>().initPaymentSheet(
                          programName: cubit.campProgramvalue ?? '',
                          userData: currentPaymentCubitState.userData,
                          totalAmount: programWatcherState.totalPrice,
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
                SizedBox(height: kDefaultPadding),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
