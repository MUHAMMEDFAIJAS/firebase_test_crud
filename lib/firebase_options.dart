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
    apiKey: 'AIzaSyDaPPwJiI8SzKPdRsZ8_UyICiIq2cfGNDk',
    appId: '1:217355942951:web:8d220a7efd91657b15e202',
    messagingSenderId: '217355942951',
    projectId: 'projectfinal-aec67',
    authDomain: 'projectfinal-aec67.firebaseapp.com',
    storageBucket: 'projectfinal-aec67.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA7E_F-yHX7g9YfyyMHEFbidK6KHwMaRUI',
    appId: '1:217355942951:android:116e35bad9e39f2515e202',
    messagingSenderId: '217355942951',
    projectId: 'projectfinal-aec67',
    storageBucket: 'projectfinal-aec67.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyADpG3lbVgJ_cSNnmcuc9g0gyNumIspY2I',
    appId: '1:217355942951:ios:496f8a3e4b54a6fe15e202',
    messagingSenderId: '217355942951',
    projectId: 'projectfinal-aec67',
    storageBucket: 'projectfinal-aec67.appspot.com',
    iosBundleId: 'com.example.projectfinal',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyADpG3lbVgJ_cSNnmcuc9g0gyNumIspY2I',
    appId: '1:217355942951:ios:496f8a3e4b54a6fe15e202',
    messagingSenderId: '217355942951',
    projectId: 'projectfinal-aec67',
    storageBucket: 'projectfinal-aec67.appspot.com',
    iosBundleId: 'com.example.projectfinal',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDaPPwJiI8SzKPdRsZ8_UyICiIq2cfGNDk',
    appId: '1:217355942951:web:daf48ba1b8f1a22215e202',
    messagingSenderId: '217355942951',
    projectId: 'projectfinal-aec67',
    authDomain: 'projectfinal-aec67.firebaseapp.com',
    storageBucket: 'projectfinal-aec67.appspot.com',
  );
}
