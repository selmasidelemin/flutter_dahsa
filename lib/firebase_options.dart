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
    apiKey: 'AIzaSyBj-CJ-3gqe0ZDFWPADuq247xT_i0XYf1Q',
    appId: '1:1021144457250:web:eaa11803ee029ce14a2a7b',
    messagingSenderId: '1021144457250',
    projectId: 'e-commerce-84617',
    authDomain: 'e-commerce-84617.firebaseapp.com',
    storageBucket: 'e-commerce-84617.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB7uoR_uQUwwxmIQQ4PlV717wv8xEMi2kg',
    appId: '1:1021144457250:android:b9e8103d5ac13a984a2a7b',
    messagingSenderId: '1021144457250',
    projectId: 'e-commerce-84617',
    storageBucket: 'e-commerce-84617.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA7buv1CdrFLJSQAeK1wIYnFdCOZDksY_8',
    appId: '1:1021144457250:ios:9566e6a8f47244454a2a7b',
    messagingSenderId: '1021144457250',
    projectId: 'e-commerce-84617',
    storageBucket: 'e-commerce-84617.appspot.com',
    iosBundleId: 'com.example.flutterApplication',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA7buv1CdrFLJSQAeK1wIYnFdCOZDksY_8',
    appId: '1:1021144457250:ios:56a89c9bf319c9e34a2a7b',
    messagingSenderId: '1021144457250',
    projectId: 'e-commerce-84617',
    storageBucket: 'e-commerce-84617.appspot.com',
    iosBundleId: 'com.example.flutterApplication.RunnerTests',
  );
}
