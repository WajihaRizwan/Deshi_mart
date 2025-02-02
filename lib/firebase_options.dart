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
    apiKey: 'AIzaSyDVhCvANwQGbC5-kCNNHVsX_cBcUUAP7N8',
    appId: '1:849722379196:web:8f77db997ba29d762bb9b9',
    messagingSenderId: '849722379196',
    projectId: 'martapp-b121f',
    authDomain: 'martapp-b121f.firebaseapp.com',
    storageBucket: 'martapp-b121f.appspot.com',
    measurementId: 'G-S0B63TGX2Q',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBU3gy1bEQ1iPZHQnGn8junow9Drn2UCu8',
    appId: '1:849722379196:android:b775d8e02c6dbb092bb9b9',
    messagingSenderId: '849722379196',
    projectId: 'martapp-b121f',
    storageBucket: 'martapp-b121f.appspot.com',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDVhCvANwQGbC5-kCNNHVsX_cBcUUAP7N8',
    appId: '1:849722379196:web:1c6197f90bd5cd972bb9b9',
    messagingSenderId: '849722379196',
    projectId: 'martapp-b121f',
    authDomain: 'martapp-b121f.firebaseapp.com',
    storageBucket: 'martapp-b121f.appspot.com',
    measurementId: 'G-DS9H8W89F5',
  );
}
