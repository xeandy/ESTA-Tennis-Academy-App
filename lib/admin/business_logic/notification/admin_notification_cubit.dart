import 'package:academy_app/data/notification/notification_service.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'admin_notification_state.dart';
part 'admin_notification_cubit.freezed.dart';

@injectable
class AdminNotificationCubit extends Cubit<AdminNotificationState> {
  final NotificationService notificationService;
  AdminNotificationCubit(this.notificationService)
      : super(AdminNotificationState.initial());

  Future<void> initNotification() {
    return notificationService.initNotification();
  }

  // Future<void> showNotification() {
  //   return notificationService.showNotification(
  //     title: 'Esta',
  //     body: 'News',
  //     payload: 'Esta',
  //   );
  // }
}
