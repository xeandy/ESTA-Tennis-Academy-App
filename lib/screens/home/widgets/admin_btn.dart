import 'package:academy_app/business_logic/check_auth/check_auth_cubit.dart';
import 'package:academy_app/business_logic/check_role/check_role_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdminBtn extends StatelessWidget {
  const AdminBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        final checkRoleState = context.watch<CheckRoleCubit>().state;
        final checkAuthState = context.watch<CheckAuthCubit>().state;
        return checkAuthState.maybeMap(
          orElse: () => Container(),
          unauthenticated: (_) => Container(),
          authenticated: (_) => checkRoleState.maybeMap(
            orElse: () => Container(),
            user: (_) => Container(),
            admin: (_) => IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/adminPanel');
              },
              icon: Icon(
                Icons.admin_panel_settings,
                size: 30,
              ),
            ),
          ),
        );
      },
    );
  }
}
