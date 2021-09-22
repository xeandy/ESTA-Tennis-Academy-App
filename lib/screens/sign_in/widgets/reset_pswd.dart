import 'package:academy_app/business_logic/reset_pswd/reset_pswd_cubit.dart';
import 'package:academy_app/constants.dart';
import 'package:academy_app/screens/sign_in/widgets/snackbar_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class ResetPswd extends StatelessWidget {
  const ResetPswd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('Reset Password'),
      ),
      body: BlocConsumer<ResetPswdCubit, ResetPswdState>(
        listener: (context, state) {
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
                      resetPswdUserNotFound: (_) => Text(
                        'User with ${state.email.getOrCrash()} not found!',
                        style: customTextStyle(),
                      ),
                      orElse: () => Text(''),
                    ),
                  ),
                );
              },
              (_) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: kBgLightColor,
                    content: Text(
                      'A password reset link has been sent to ${state.email.getOrCrash()}',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                );
                Navigator.pop(context);
                context.read<ResetPswdCubit>().refreshState();
              },
            ),
          );
        },
        builder: (context, state) {
          return Form(
            autovalidateMode: state.showErrorMessage,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                        errorStyle: TextStyle(fontSize: 15),
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
                          context.read<ResetPswdCubit>().emailChanged(value),
                      validator: (_) =>
                          context.read<ResetPswdCubit>().state.email.value.fold(
                                (failure) => failure.maybeMap(
                                  invalidEmail: (_) => 'Invalid email',
                                  orElse: () => null,
                                ),
                                (_) => null,
                              ),
                    ),
                    SizedBox(
                      height: kDefaultPadding,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        context.read<ResetPswdCubit>().resetPassword();
                      },
                      child: Text(
                        'Confirm',
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
              ),
            ),
          );
        },
      ),
    );
  }
}
