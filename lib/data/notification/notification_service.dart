import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class NotificationService {
  static final _notifications = FlutterLocalNotificationsPlugin();

  Future initNotification() async {
    final android = AndroidInitializationSettings('@mipmap/ic_launcher');
    final ios = IOSInitializationSettings();
    final settings = InitializationSettings(
      android: android,
      iOS: ios,
    );
    await _notifications.initialize(settings,
        onSelectNotification: (payload) async {
      print('Notificaion');
    });
  }

  Future showNotification({
    int id = 0,
    String? title,
    String? body,
    String? payload,
  }) async {
    return _notifications.show(
      id,
      title,
      body,
      await notificationDetails(),
    );
  }

  Future notificationDetails() async {
    return NotificationDetails(
      android: AndroidNotificationDetails(
        'channel id',
        'channe name',
        'channel description',
        importance: Importance.max,
      ),
      iOS: IOSNotificationDetails(),
    );
  }
}
