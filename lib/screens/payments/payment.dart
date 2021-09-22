import 'package:academy_app/business_logic/check_auth/check_auth_cubit.dart';
import 'package:academy_app/screens/payments/widgets/payment_body.dart';
import 'package:academy_app/screens/payments/widgets/unauthen_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Payment extends StatelessWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CheckAuthCubit, CheckAuthState>(
        builder: (context, state) {
          return state.maybeMap(
            authenticated: (_) => PaymentBody(),
            unauthenticated: (_) => UnauthenticatedPaymentBody(),
            orElse: () => Container(),
          );
        },
      ),
    );
  }
}
