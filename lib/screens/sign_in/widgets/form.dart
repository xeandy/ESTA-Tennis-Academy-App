import 'package:academy_app/business_logic/check_auth/check_auth_cubit.dart';
import 'package:academy_app/business_logic/check_role/check_role_cubit.dart';
import 'package:academy_app/business_logic/sign_in/sign_in_cubit.dart';
import 'package:academy_app/screens/sign_in/widgets/snackbar_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocConsumer<SignInCubit, SignInState>(listener: (context, state) {
      state.authFailureOrSuccess.fold(
        () {},
        (either) => either.fold(
          (failure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: kBgLightColor,
                content: failure.maybeMap(
                  serverError: (_) => Text(
                    'Server Error',
                    style: customTextStyle(),
                  ),
                  emailAlredyInUse: (_) => Text('Email already in use!'),
                  invalidEmailAndPasswordCombination: (_) => Text(
                    'Invalid Email and Password combination!',
                    style: customTextStyle(),
                  ),
                  orElse: () => Text(''),
                ),
              ),
            );
          },
          (_) {
            context.read<CheckAuthCubit>().checkAuthRequest();
            context.read<CheckRoleCubit>().checkRole();
          },
        ),
      );
    }, builder: (context, state) {
      return Form(
        autovalidateMode: state.showErrorMessage,
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.always,
                prefixIcon: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                  child: SvgPicture.asset(
                    'assets/icons/message.svg',
                    height: 25,
                    color: Colors.purpleAccent[700],
                  ),
                ),
                labelText: 'Email',
                labelStyle: TextStyle(
                  color: Colors.purpleAccent[700],
                ),
                errorStyle: TextStyle(fontSize: 13),
                hintText: 'Enter your email',
                focusColor: Colors.purpleAccent,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: kTextColor,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: kTextColor,
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: kTextColor,
                  ),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: kTextColor,
                  ),
                ),
              ),
              onChanged: (value) =>
                  context.read<SignInCubit>().emailChanged(value),
              validator: (_) =>
                  context.read<SignInCubit>().state.email.value.fold(
                        (failure) => failure.maybeMap(
                          invalidEmail: (_) => 'Invalid email',
                          orElse: () => null,
                        ),
                        (_) => null,
                      ),
            ),
            SizedBox(height: 20),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.always,
                prefixIcon: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                  child: SvgPicture.asset(
                    'assets/icons/unlock.svg',
                    height: 25,
                    color: Colors.purpleAccent[700],
                  ),
                ),
                hintText: 'Enter your password',
                labelText: 'Password',
                labelStyle: TextStyle(
                  color: Colors.purpleAccent[700],
                ),
                errorStyle: TextStyle(fontSize: 13),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(22),
                  borderSide: BorderSide(
                    color: kTextColor,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(22),
                  borderSide: BorderSide(
                    color: kTextColor,
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: kTextColor,
                  ),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: kTextColor,
                  ),
                ),
              ),
              onChanged: (value) =>
                  context.read<SignInCubit>().passwordChanged(value),
              validator: (_) =>
                  context.read<SignInCubit>().state.password.value.fold(
                        (failure) => failure.maybeMap(
                          empty: (_) => 'Password field can not be empty',
                          orElse: () => null,
                        ),
                        (_) => null,
                      ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.read<SignInCubit>().signInWithEmailAndPassword();
              },
              child: Text(
                'Sign In',
                style: TextStyle(
                  color: kBgLightColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.purpleAccent[700],
                elevation: 2,
                minimumSize: Size(size.width, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(22),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
