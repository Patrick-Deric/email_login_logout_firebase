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
    apiKey: 'AIzaSyDdzxwf681Ij-QI320LTGYVAEJW_C1kyrk',
    appId: '1:445520541766:web:0c07d53a026f564d483247',
    messagingSenderId: '445520541766',
    projectId: 'auth-email-681fb',
    authDomain: 'auth-email-681fb.firebaseapp.com',
    storageBucket: 'auth-email-681fb.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDhKPu9jlzUwF7dOmQWER1O1zcVDICU4Hs',
    appId: '1:445520541766:android:2eaad8f279aa5751483247',
    messagingSenderId: '445520541766',
    projectId: 'auth-email-681fb',
    storageBucket: 'auth-email-681fb.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD-NFJ5sQY5J1Oz5H8YHVGDbYZGNHyJVRk',
    appId: '1:445520541766:ios:d5c02d23704db061483247',
    messagingSenderId: '445520541766',
    projectId: 'auth-email-681fb',
    storageBucket: 'auth-email-681fb.appspot.com',
    iosBundleId: 'com.example.emailLoginLogout',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD-NFJ5sQY5J1Oz5H8YHVGDbYZGNHyJVRk',
    appId: '1:445520541766:ios:acd1e09803f033e8483247',
    messagingSenderId: '445520541766',
    projectId: 'auth-email-681fb',
    storageBucket: 'auth-email-681fb.appspot.com',
    iosBundleId: 'com.example.emailLoginLogout.RunnerTests',
  );
}
