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
    apiKey: 'AIzaSyDNQaAsQ1hV9ECaqGUCVFQW9XdrF7vOKOo',
    appId: '1:1064431124844:web:1b079b2448b747916ef349',
    messagingSenderId: '1064431124844',
    projectId: 'kat-chat-c5cf0',
    authDomain: 'kat-chat-c5cf0.firebaseapp.com',
    storageBucket: 'kat-chat-c5cf0.appspot.com',
    measurementId: 'G-HHN2C5CTN1',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCAJG8KjUVChRbnbMg8cfScLbvMe3BE8j8',
    appId: '1:1064431124844:android:0b0f876da42dc41c6ef349',
    messagingSenderId: '1064431124844',
    projectId: 'kat-chat-c5cf0',
    storageBucket: 'kat-chat-c5cf0.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD6RdsP79lPbGIJiZ4clqBRNP6yqXGD0wE',
    appId: '1:1064431124844:ios:a15892a0fc29fc316ef349',
    messagingSenderId: '1064431124844',
    projectId: 'kat-chat-c5cf0',
    storageBucket: 'kat-chat-c5cf0.appspot.com',
    iosBundleId: 'com.example.kattashChat2',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD6RdsP79lPbGIJiZ4clqBRNP6yqXGD0wE',
    appId: '1:1064431124844:ios:dccfca06169e4d8f6ef349',
    messagingSenderId: '1064431124844',
    projectId: 'kat-chat-c5cf0',
    storageBucket: 'kat-chat-c5cf0.appspot.com',
    iosBundleId: 'com.example.kattashChat2.RunnerTests',
  );
}
