import 'package:academy_app/business_logic/check_auth/check_auth_cubit.dart';
import 'package:academy_app/business_logic/user/update_user/update_user_cubit.dart';
import 'package:academy_app/business_logic/user/user_watcher/user_watcher_cubit.dart';
import 'package:academy_app/screens/profile/widgets/profile_body.dart';
import 'package:academy_app/screens/profile/widgets/unauthen_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../injection.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CheckAuthCubit, CheckAuthState>(
        builder: (context, state) {
          return state.maybeMap(
            authenticated: (_) => MultiBlocProvider(
              providers: [
                BlocProvider<UserWatcherCubit>(
                  create: (context) => getIt<UserWatcherCubit>()..getUserData(),
                ),
                BlocProvider<UpdateUserCubit>(
                  create: (context) => getIt<UpdateUserCubit>(),
                ),
              ],
              child: ProfileBody(),
            ),
            unauthenticated: (_) => UnauthenticatedProfileBody(),
            orElse: () => Container(),
          );
        },
      ),
    );
  }
}
