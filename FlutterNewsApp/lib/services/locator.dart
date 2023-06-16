import 'package:flutter/services.dart';
import 'package:news_app_api/services/push_notification-service.dart';

GetIt locator = GetIt.instance;
void setupLocator() {
  locator.registerLazySingleton(() => PushNotificationService());
}