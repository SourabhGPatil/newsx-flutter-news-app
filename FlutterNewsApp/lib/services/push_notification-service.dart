import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';

class PushNotificationService {
  final FirebaseMessaging _fcm = FirebaseMessaging();

  Future initialise() async {
    if(Platform.isIOS) {
      // request permissions if we're on Android
      _fcm.requestNotificationPermissions(IosNotificationSettings());
    }

    _fcm.configure(
      //Called when the app is in the foreground and we receive a push notification.
      onMessage: (Map<String, dynamic> message) async {
        print('onMessage: $message');
      },
      //Called when the app has been closed completely
      //and it's opened from the push notification directly.
      onLaunch: (Map<String, dynamic> message) async {
        print('onMessage: $message');
      },
      //Called whenb the app is in the background
      //and it's opened from the push notification.
      onResume: (Map<String, dynamic> message) async {
        print('onMessage: $message');
      },
    );
  }
}