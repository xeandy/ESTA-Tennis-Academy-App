import 'package:academy_app/admin/screens/admin.dart';
import 'package:academy_app/business_logic/check_auth/check_auth_cubit.dart';
import 'package:academy_app/business_logic/check_role/check_role_cubit.dart';
import 'package:academy_app/screens/home/home.dart';
import 'package:academy_app/screens/sign_in/widgets/body.dart';
import 'package:academy_app/widgets/responsive_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../constants.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: BlocBuilder<CheckAuthCubit, CheckAuthState>(
          builder: (context, state) {
            return state.maybeMap(
              authenticated: (_) => BlocBuilder<CheckRoleCubit, CheckRoleState>(
                builder: (context, state) {
                  return state.maybeMap(
                    orElse: () => Center(
                      child: Container(),
                    ),
                    loadFailure: (state) => Center(
                      child: Text(
                        state.failure.maybeMap(
                          orElse: () =>
                              'Unexpected Error. \nPlease contact support',
                          insufficientPermission: (_) =>
                              'Insufficient Permission',
                        ),
                      ),
                    ),
                    admin: (_) => AdminHome(),
                    user: (_) => Home(),
                  );
                },
              ),
              unauthenticated: (_) => Responsive(
                mobile: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: kDefaultPadding * 2),
                  child: SignInBody(),
                ),
                tablet: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: kDefaultPadding * 3,
                    vertical: kDefaultPadding,
                  ),
                  child: SignInBody(),
                ),
                desktop: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: kDefaultPadding * 20),
                  child: SignInBody(),
                ),
              ),
              orElse: () => Container(),
            );
          },
        ),
      ),
    );
  }
}
