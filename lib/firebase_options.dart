// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyBlwMzj0fTrbJ2m-82RJKMm17EDMWhdur4',
    appId: '1:521447151914:web:dbc66ca332a9d6c5cc6653',
    messagingSenderId: '521447151914',
    projectId: 'rapido-app-1c0f8',
    authDomain: 'rapido-app-1c0f8.firebaseapp.com',
    storageBucket: 'rapido-app-1c0f8.appspot.com',
    measurementId: 'G-TP7RM6QSXY',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC293Gr4IX400orz80pj42DJBb07LU4gPY',
    appId: '1:521447151914:android:76f10ae6207115decc6653',
    messagingSenderId: '521447151914',
    projectId: 'rapido-app-1c0f8',
    storageBucket: 'rapido-app-1c0f8.appspot.com',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBlwMzj0fTrbJ2m-82RJKMm17EDMWhdur4',
    appId: '1:521447151914:web:ccceadc7239c1fcccc6653',
    messagingSenderId: '521447151914',
    projectId: 'rapido-app-1c0f8',
    authDomain: 'rapido-app-1c0f8.firebaseapp.com',
    storageBucket: 'rapido-app-1c0f8.appspot.com',
    measurementId: 'G-FX8CXPNXWG',
  );
}