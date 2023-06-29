import 'package:flutter/services.dart';
import 'package:news_app_api/services/push_notification-service.dart';

// Import the GetIt package for dependency injection
GetIt locator = GetIt.instance;

// Function to set up the dependency injection container
void setupLocator() {
  // Register the PushNotificationService as a lazy singleton in the locator
  locator.registerLazySingleton(() => PushNotificationService());
}
