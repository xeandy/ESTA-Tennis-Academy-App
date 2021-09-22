// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'admin/business_logic/get_application_form/get_application_form_cubit.dart'
    as _i37;
import 'admin/business_logic/get_users/get_users_cubit.dart' as _i38;
import 'admin/business_logic/news/add_news/add_news_cubit.dart' as _i27;
import 'admin/business_logic/notification/admin_notification_cubit.dart'
    as _i28;
import 'admin/business_logic/side_bar/side_bar_watcher/side_bar_watcher_cubit.dart'
    as _i22;
import 'business_logic/check_auth/check_auth_cubit.dart' as _i29;
import 'business_logic/check_role/check_role_cubit.dart' as _i30;
import 'business_logic/comment/comment_watcher/comment_watcher_cubit.dart'
    as _i31;
import 'business_logic/comment/create_comment/create_comment_cubit.dart'
    as _i32;
import 'business_logic/news_watcher/news_watcher_cubit.dart' as _i15;
import 'business_logic/payment/payment_cubit.dart' as _i18;
import 'business_logic/pdf_watcher/pdf_watcher_cubit.dart' as _i19;
import 'business_logic/program_watcher/asp_drop_button/cubit/drop_button_cubit.dart'
    as _i33;
import 'business_logic/program_watcher/asp_drop_button1/cubit/drop_button_cubit.dart'
    as _i34;
import 'business_logic/program_watcher/asp_drop_button2/cubit/drop_button_cubit.dart'
    as _i35;
import 'business_logic/program_watcher/asp_drop_button3/cubit/drop_button_cubit.dart'
    as _i36;
import 'business_logic/program_watcher/program_watcher_cubit.dart' as _i20;
import 'business_logic/reset_pswd/reset_pswd_cubit.dart' as _i21;
import 'business_logic/sign_in/sign_in_cubit.dart' as _i23;
import 'business_logic/sign_up/sign_up_cubit.dart' as _i24;
import 'business_logic/user/update_user/update_user_cubit.dart' as _i25;
import 'business_logic/user/user_watcher/user_watcher_cubit.dart' as _i26;
import 'data/app_injectable_module.dart' as _i39;
import 'data/notification/notification_service.dart' as _i16;
import 'data/pdf_api/pdf_api.dart' as _i17;
import 'data/repository/auth/auth.dart' as _i6;
import 'data/repository/auth/i_auth.dart' as _i5;
import 'data/repository/comment/comment_repository.dart' as _i8;
import 'data/repository/comment/i_comment_repository.dart' as _i7;
import 'data/repository/news/i_news_repository.dart' as _i9;
import 'data/repository/news/news_repository.dart' as _i10;
import 'data/repository/program/i_program_repository.dart' as _i11;
import 'data/repository/program/program_repository.dart' as _i12;
import 'data/repository/user/i_user_repository.dart' as _i13;
import 'data/repository/user/user_repository.dart'
    as _i14; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final appInjectableModule = _$AppInjectableModule();
  gh.lazySingleton<_i3.FirebaseAuth>(() => appInjectableModule.firebaseAuth);
  gh.factory<_i4.FirebaseFirestore>(
      () => appInjectableModule.firebaseFirestore);
  gh.lazySingleton<_i5.IAuth>(() => _i6.Auth(get<_i3.FirebaseAuth>()));
  gh.lazySingleton<_i7.ICommentRepo>(
      () => _i8.CommentRepo(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i9.INewsRepo>(
      () => _i10.NewsRepo(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i11.IProgramRepo>(
      () => _i12.ProgramRepo(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i13.IUserRepo>(
      () => _i14.UserRepo(get<_i4.FirebaseFirestore>()));
  gh.factory<_i15.NewsWatcherCubit>(
      () => _i15.NewsWatcherCubit(get<_i9.INewsRepo>()));
  gh.lazySingleton<_i16.NotificationService>(() => _i16.NotificationService());
  gh.lazySingleton<_i17.PDFapi>(() => _i17.PDFapi());
  gh.factory<_i18.PaymentCubit>(() => _i18.PaymentCubit(get<_i13.IUserRepo>()));
  gh.factory<_i19.PdfWatcherCubit>(
      () => _i19.PdfWatcherCubit(get<_i17.PDFapi>()));
  gh.factory<_i20.ProgramWatcherCubit>(
      () => _i20.ProgramWatcherCubit(get<_i11.IProgramRepo>()));
  gh.factory<_i21.ResetPswdCubit>(() => _i21.ResetPswdCubit(get<_i5.IAuth>()));
  gh.factory<_i22.SideBarWatcherCubit>(() => _i22.SideBarWatcherCubit());
  gh.factory<_i23.SignInCubit>(() => _i23.SignInCubit(get<_i5.IAuth>()));
  gh.factory<_i24.SignUpCubit>(() => _i24.SignUpCubit(get<_i5.IAuth>()));
  gh.factory<_i25.UpdateUserCubit>(
      () => _i25.UpdateUserCubit(get<_i13.IUserRepo>()));
  gh.factory<_i26.UserWatcherCubit>(
      () => _i26.UserWatcherCubit(get<_i13.IUserRepo>()));
  gh.factory<_i27.AddNewsCubit>(() => _i27.AddNewsCubit(get<_i9.INewsRepo>()));
  gh.factory<_i28.AdminNotificationCubit>(
      () => _i28.AdminNotificationCubit(get<_i16.NotificationService>()));
  gh.factory<_i29.CheckAuthCubit>(() => _i29.CheckAuthCubit(get<_i5.IAuth>()));
  gh.factory<_i30.CheckRoleCubit>(() => _i30.CheckRoleCubit(
      get<_i13.IUserRepo>(), get<_i29.CheckAuthCubit>(), get<_i5.IAuth>()));
  gh.factory<_i31.CommentWatcherCubit>(
      () => _i31.CommentWatcherCubit(get<_i7.ICommentRepo>()));
  gh.factory<_i32.CreateCommentCubit>(
      () => _i32.CreateCommentCubit(get<_i7.ICommentRepo>()));
  gh.factory<_i33.DropButtonCubit>(
      () => _i33.DropButtonCubit(get<_i11.IProgramRepo>()));
  gh.factory<_i34.DropButtonCubit1>(
      () => _i34.DropButtonCubit1(get<_i11.IProgramRepo>()));
  gh.factory<_i35.DropButtonCubit2>(
      () => _i35.DropButtonCubit2(get<_i11.IProgramRepo>()));
  gh.factory<_i36.DropButtonCubit3>(
      () => _i36.DropButtonCubit3(get<_i11.IProgramRepo>()));
  gh.factory<_i37.GetApplicationFormCubit>(
      () => _i37.GetApplicationFormCubit(get<_i13.IUserRepo>()));
  gh.factory<_i38.GetUsersCubit>(
      () => _i38.GetUsersCubit(get<_i13.IUserRepo>()));
  return get;
}

class _$AppInjectableModule extends _i39.AppInjectableModule {}
