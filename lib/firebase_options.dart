// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
// / await Firebase.initializeApp(
// /   options: DefaultFirebaseOptions.currentPlatform,
// / );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyD9A7vU79mwRrI65UA_8IEH50WJY6HkmJw',
    appId: '1:32506482954:web:01fa4a049a4000d7db2af3',
    messagingSenderId: '32506482954',
    projectId: 'fcmtest-17920',
    authDomain: 'fcmtest-17920.firebaseapp.com',
    storageBucket: 'fcmtest-17920.appspot.com',
    measurementId: 'G-0YK73Z8PD4',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDqr-G2p5flEeDiVuNyGtoaCx-022II3xE',
    appId: '1:32506482954:android:7b4f05d4a334d393db2af3',
    messagingSenderId: '32506482954',
    projectId: 'fcmtest-17920',
    storageBucket: 'fcmtest-17920.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAaNz5_4ML5NF95DXA9AfCORRdJN5jPM4I',
    appId: '1:32506482954:ios:6e7f555631668076db2af3',
    messagingSenderId: '32506482954',
    projectId: 'fcmtest-17920',
    storageBucket: 'fcmtest-17920.appspot.com',
    iosClientId:
        '32506482954-u62vpq14tk9cdb0t5ovhojn1u19ef4qp.apps.googleusercontent.com',
    iosBundleId: 'com.example.userApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAaNz5_4ML5NF95DXA9AfCORRdJN5jPM4I',
    appId: '1:32506482954:ios:6e7f555631668076db2af3',
    messagingSenderId: '32506482954',
    projectId: 'fcmtest-17920',
    storageBucket: 'fcmtest-17920.appspot.com',
    iosClientId:
        '32506482954-u62vpq14tk9cdb0t5ovhojn1u19ef4qp.apps.googleusercontent.com',
    iosBundleId: 'com.example.userApp',
  );
}