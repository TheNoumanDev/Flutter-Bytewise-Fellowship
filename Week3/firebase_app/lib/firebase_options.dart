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
    apiKey: 'AIzaSyAqrS5dWd7uvSRdmQS3xGix4xQn-67RoVA',
    appId: '1:706374459925:web:22ebc9b34153b67f08e41c',
    messagingSenderId: '706374459925',
    projectId: 'firebasepractice0x45',
    authDomain: 'fir-practice0x45.firebaseapp.com',
    storageBucket: 'firebasepractice0x45.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAGYeiK43mqm4macZaZL21b7rGNqlVu0Nw',
    appId: '1:706374459925:android:c7737922381d395108e41c',
    messagingSenderId: '706374459925',
    projectId: 'firebasepractice0x45',
    storageBucket: 'firebasepractice0x45.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDioF-F6i_e9ZLnjKI3hONCF3HxyGAIngU',
    appId: '1:706374459925:ios:b74233bfb27d15fa08e41c',
    messagingSenderId: '706374459925',
    projectId: 'firebasepractice0x45',
    storageBucket: 'firebasepractice0x45.appspot.com',
    iosClientId: '706374459925-mm675eg6hu31cp388h73qrcqeak1ubj5.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDioF-F6i_e9ZLnjKI3hONCF3HxyGAIngU',
    appId: '1:706374459925:ios:b74233bfb27d15fa08e41c',
    messagingSenderId: '706374459925',
    projectId: 'firebasepractice0x45',
    storageBucket: 'firebasepractice0x45.appspot.com',
    iosClientId: '706374459925-mm675eg6hu31cp388h73qrcqeak1ubj5.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseApp',
  );
}
