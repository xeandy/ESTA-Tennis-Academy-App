import 'package:academy_app/admin/business_logic/notification/admin_notification_cubit.dart';
import 'package:academy_app/business_logic/check_auth/check_auth_cubit.dart';
import 'package:academy_app/business_logic/check_role/check_role_cubit.dart';
import 'package:academy_app/business_logic/news_watcher/news_watcher_cubit.dart';
import 'package:academy_app/business_logic/payment/payment_cubit.dart';
import 'package:academy_app/business_logic/program_watcher/asp_drop_button/cubit/drop_button_cubit.dart';
import 'package:academy_app/business_logic/program_watcher/asp_drop_button1/cubit/drop_button_cubit.dart';
import 'package:academy_app/business_logic/program_watcher/asp_drop_button2/cubit/drop_button_cubit.dart';
import 'package:academy_app/business_logic/program_watcher/asp_drop_button3/cubit/drop_button_cubit.dart';
import 'package:academy_app/business_logic/reset_pswd/reset_pswd_cubit.dart';
import 'package:academy_app/business_logic/sign_up/sign_up_cubit.dart';
import 'package:academy_app/injection.dart';
import 'package:academy_app/screens/home/widgets/btm_nav_bar_cubit.dart';
import 'package:academy_app/services/route.dart';
import 'package:academy_app/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:injectable/injectable.dart';

import 'business_logic/comment/create_comment/create_comment_cubit.dart';
import 'business_logic/program_watcher/program_watcher_cubit.dart';
import 'business_logic/sign_in/sign_in_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  configureInjection(Environment.prod);
  Stripe.publishableKey =
      'pk_live_51JK7vIFsiNbNnQfMWa9cGg88hpCeSrGAy57bpLqALjakdphhfW5S8IlfhaxOqY5p1HrSPD6Ix74yYQyPuu77nnvG00OfCukNNz';
  Stripe.merchantIdentifier = 'merchant.com.estaflorida.academy';
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<BottomNavBarCubit>(
          create: (context) => BottomNavBarCubit(),
        ),
        BlocProvider<CheckAuthCubit>(
          create: (context) => getIt<CheckAuthCubit>()..checkAuthRequest(),
        ),
        BlocProvider<CheckRoleCubit>(
          create: (context) => getIt<CheckRoleCubit>()..checkRole(),
        ),
        BlocProvider<SignInCubit>(
          create: (context) => getIt<SignInCubit>(),
        ),
        BlocProvider<ResetPswdCubit>(
          create: (context) => getIt<ResetPswdCubit>(),
        ),
        BlocProvider<CreateCommentCubit>(
          create: (context) => getIt<CreateCommentCubit>(),
        ),
        BlocProvider<SignUpCubit>(
          create: (context) => getIt<SignUpCubit>(),
        ),
        BlocProvider<PaymentCubit>(
          create: (context) => getIt<PaymentCubit>()..getUserData(),
        ),
        BlocProvider<NewsWatcherCubit>(
          create: (context) => getIt<NewsWatcherCubit>()..getNews(),
        ),
        BlocProvider<AdminNotificationCubit>(
          create: (context) => getIt<AdminNotificationCubit>(),
        ),
        BlocProvider<ProgramWatcherCubit>(
          create: (context) => getIt<ProgramWatcherCubit>()..getPrograms(),
        ),
        BlocProvider<DropButtonCubit>(
          create: (context) => getIt<DropButtonCubit>()..getPrograms(),
        ),
        BlocProvider<DropButtonCubit1>(
          create: (context) => getIt<DropButtonCubit1>()..getPrograms(),
        ),
        BlocProvider<DropButtonCubit2>(
          create: (context) => getIt<DropButtonCubit2>()..getPrograms(),
        ),
        BlocProvider<DropButtonCubit3>(
          create: (context) => getIt<DropButtonCubit3>()..getPrograms(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: theme(),
        initialRoute: '/',
        onGenerateRoute: appRouter.onGenerateRoute,
      ),
    );
  }
}
