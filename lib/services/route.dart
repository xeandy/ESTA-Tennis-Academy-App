import 'package:academy_app/admin/business_logic/get_users/get_users_cubit.dart';
import 'package:academy_app/admin/business_logic/side_bar/side_bar_actor/side_bar_actor_cubit.dart';
import 'package:academy_app/admin/business_logic/side_bar/side_bar_watcher/side_bar_watcher_cubit.dart';
import 'package:academy_app/admin/screens/admin.dart';
import 'package:academy_app/admin/screens/admin_panel/admin_panel.dart';
import 'package:academy_app/business_logic/pdf_watcher/pdf_watcher_cubit.dart';
import 'package:academy_app/business_logic/program_watcher/program_watcher_cubit.dart';
import 'package:academy_app/model/user_data/user_data.dart';
import 'package:academy_app/screens/home/home.dart';
import 'package:academy_app/screens/payments/additional_service/additional_service.dart';
import 'package:academy_app/screens/payments/asp/asp_payment.dart';
import 'package:academy_app/screens/payments/camp/camp.dart';
import 'package:academy_app/screens/policy/policy.dart';
import 'package:academy_app/screens/profile/edit_profile.dart';
import 'package:academy_app/screens/profile/policies.dart';
import 'package:academy_app/screens/programs/adt_service/adt_service_details.dart';
import 'package:academy_app/screens/programs/widgets/camp/camp_details.dart';
import 'package:academy_app/screens/sign_in/sign_in.dart';
import 'package:academy_app/screens/application/application.dart';
import 'package:academy_app/screens/sign_up/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../injection.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    final args = routeSettings.arguments;
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => SignIn(),
        );
      case '/home':
        return MaterialPageRoute(
          builder: (_) => Home(),
        );
      case '/signUp':
        return MaterialPageRoute(
          builder: (_) => SignUp(),
        );
      case '/campDetails':
        return MaterialPageRoute(
          builder: (_) => BlocProvider<PdfWatcherCubit>(
            create: (context) => getIt<PdfWatcherCubit>()..getPdf(),
            child: CampDetails(),
          ),
        );
      case '/aspPayment':
        return MaterialPageRoute(
          builder: (_) => BlocProvider<ProgramWatcherCubit>(
            create: (context) => getIt<ProgramWatcherCubit>()..getPrograms(),
            child: AspPayment(),
          ),
        );
      case '/campPayment':
        return MaterialPageRoute(
          builder: (_) => BlocProvider<ProgramWatcherCubit>(
            create: (context) => getIt<ProgramWatcherCubit>()
              ..getMemmberOfAspPrice()
              ..getNoneMemberPrice()
              ..getFullDayPrice()
              ..getFitnessPrice(),
            child: CampPayment(),
          ),
        );
      case '/adtService':
        return MaterialPageRoute(
          builder: (_) => BlocProvider<ProgramWatcherCubit>(
            create: (context) => getIt<ProgramWatcherCubit>()
              ..getPflPrice()
              ..getPtlPrice(),
            child: AdditionalService(),
          ),
        );

      case '/adminPanel':
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider<SideBarWatcherCubit>(
                create: (context) => SideBarWatcherCubit()..addNews(),
              ),
              BlocProvider<SideBarActorCubit>(
                create: (context) => SideBarActorCubit()..closeSideBar(),
              ),
              BlocProvider<GetUsersCubit>(
                create: (context) => getIt<GetUsersCubit>()..getUsers(),
              ),
            ],
            child: AdminPanel(),
          ),
        );
      case '/admin':
        return MaterialPageRoute(
          builder: (_) => AdminHome(),
        );
      case '/application':
        return MaterialPageRoute(
          builder: (_) => Application(),
        );
      case '/policies':
        return MaterialPageRoute(
          builder: (_) => Policies(),
        );

      case '/adtServiceDetails':
        return MaterialPageRoute(
          builder: (_) => AdtServiceDetails(),
        );
      case '/profilePolicies':
        return MaterialPageRoute(
          builder: (_) => ProfilePolicies(),
        );
      case '/editProfile':
        return MaterialPageRoute(
          builder: (_) => EditProfile(userData: args as UserData),
        );

      default:
        return null;
    }
  }
}
