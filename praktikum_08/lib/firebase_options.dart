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
        return ios;
      case TargetPlatform.macOS:
        return macos;
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
    apiKey: 'AIzaSyCTRDQakVl_a35u9uZCWW2KLfOS3EPbFxQ',
    appId: '1:486490902976:web:6f8815d9226c1d00637825',
    messagingSenderId: '486490902976',
    projectId: 'prakflutterfirebase-89cee',
    authDomain: 'prakflutterfirebase-89cee.firebaseapp.com',
    storageBucket: 'prakflutterfirebase-89cee.appspot.com',
    measurementId: 'G-JGSXGMTW47',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA8Nmtd-GoYK9Ulnnuzw2hwEYVjh4J6K_Y',
    appId: '1:486490902976:android:5e4d1ae1f62f4d1a637825',
    messagingSenderId: '486490902976',
    projectId: 'prakflutterfirebase-89cee',
    storageBucket: 'prakflutterfirebase-89cee.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyClZsWbUTZsGCQUPCttbi0XH4wpAS5QCwI',
    appId: '1:486490902976:ios:a567e5b6ff69e103637825',
    messagingSenderId: '486490902976',
    projectId: 'prakflutterfirebase-89cee',
    storageBucket: 'prakflutterfirebase-89cee.appspot.com',
    iosBundleId: 'com.example.praktikum08',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyClZsWbUTZsGCQUPCttbi0XH4wpAS5QCwI',
    appId: '1:486490902976:ios:a567e5b6ff69e103637825',
    messagingSenderId: '486490902976',
    projectId: 'prakflutterfirebase-89cee',
    storageBucket: 'prakflutterfirebase-89cee.appspot.com',
    iosBundleId: 'com.example.praktikum08',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCTRDQakVl_a35u9uZCWW2KLfOS3EPbFxQ',
    appId: '1:486490902976:web:daddba20c3d17ae4637825',
    messagingSenderId: '486490902976',
    projectId: 'prakflutterfirebase-89cee',
    authDomain: 'prakflutterfirebase-89cee.firebaseapp.com',
    storageBucket: 'prakflutterfirebase-89cee.appspot.com',
    measurementId: 'G-SWFKJJVYE2',
  );
}