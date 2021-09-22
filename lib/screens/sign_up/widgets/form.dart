import 'package:academy_app/business_logic/check_auth/check_auth_cubit.dart';
import 'package:academy_app/business_logic/check_role/check_role_cubit.dart';
import 'package:academy_app/business_logic/sign_up/sign_up_cubit.dart';
import 'package:academy_app/constants.dart';
import 'package:academy_app/screens/sign_in/widgets/snackbar_text_style.dart';
import 'package:academy_app/screens/sign_up/widgets/custom_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return BlocConsumer<SignUpCubit, SignUpState>(
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
                      'Server error',
                      style: customTextStyle(),
                    ),
                    emailAlredyInUse: (_) => Text(
                      'Email already in use',
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

              Navigator.pushNamedAndRemoveUntil(
                  context, '/home', (route) => false);
            },
          ),
        );
      },
      builder: (context, state) {
        return Form(
          autovalidateMode: state.showErrorMessage,
          child: Column(
            children: [
              TextFormField(
                decoration: customDecoration(
                  iconPath: 'assets/icons/user.svg',
                  hintText: 'Enter name',
                  labelText: "Player's full name",
                ),
                onChanged: (value) =>
                    context.read<SignUpCubit>().userNameChanged(value),
                validator: (_) =>
                    context.read<SignUpCubit>().state.userName.value.fold(
                          (failure) => failure.maybeMap(
                            empty: (_) => 'Name field can not be empty',
                            exceedingLength: (_) => 'Exceeding length',
                            orElse: () => null,
                          ),
                          (_) => null,
                        ),
              ),
              SizedBox(height: kDefaultPadding),
              TextFormField(
                decoration: customDecoration(
                  iconPath: 'assets/icons/message.svg',
                  hintText: 'Enter email',
                  labelText: 'Email',
                ),
                onChanged: (value) =>
                    context.read<SignUpCubit>().emailChanged(value),
                validator: (_) =>
                    context.read<SignUpCubit>().state.email.value.fold(
                          (failure) => failure.maybeMap(
                            invalidEmail: (_) => 'Invalid email',
                            orElse: () => null,
                          ),
                          (_) => null,
                        ),
              ),
              SizedBox(height: kDefaultPadding),
              TextFormField(
                obscureText: true,
                decoration: customDecoration(
                  iconPath: 'assets/icons/unlock.svg',
                  hintText: 'Enter password',
                  labelText: 'Password',
                ),
                onChanged: (value) =>
                    context.read<SignUpCubit>().passwordChanged(value),
                validator: (_) =>
                    context.read<SignUpCubit>().state.password.value.fold(
                          (failure) => failure.maybeMap(
                            empty: (_) => 'Passsword field can not be empty',
                            shortPassword: (_) => 'Short password',
                            orElse: () => null,
                          ),
                          (_) => null,
                        ),
              ),
              SizedBox(height: kDefaultPadding),
              TextFormField(
                obscureText: true,
                decoration: customDecoration(
                  iconPath: 'assets/icons/confirm.svg',
                  hintText: 'Re-enter password',
                  labelText: 'Confirm Password',
                ),
                onChanged: (value) =>
                    context.read<SignUpCubit>().confirmPasswordChanged(value),
                validator: (_) => context
                    .read<SignUpCubit>()
                    .state
                    .confirmPassword
                    .value
                    .fold(
                      (failure) => failure.maybeMap(
                        passwordNotMatch: (_) => 'Password not match',
                        orElse: () => null,
                      ),
                      (_) => null,
                    ),
              ),
              SizedBox(height: kDefaultPadding),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.purpleAccent[700],
                  minimumSize: Size(size.width, 0),
                  padding: EdgeInsets.symmetric(vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(22),
                    ),
                  ),
                ),
                onPressed: () async {
                  var validate =
                      await context.read<SignUpCubit>().validateForm();
                  if (validate) {
                    context.read<SignUpCubit>().registerWithEmailAndPassword();
                  }
                },
                child: Text(
                  'Continue',
                  style: TextStyle(
                    color: kBgLightColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              SizedBox(height: kDefaultPadding),
            ],
          ),
        );
      },
    );
  }
}
