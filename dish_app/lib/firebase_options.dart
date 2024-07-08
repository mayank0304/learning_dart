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
    apiKey: 'AIzaSyBEEZxTSZCNT9_qvcTfK-qeHkPbXpv15dA',
    appId: '1:524894987866:web:f08917f68fe100e6175a63',
    messagingSenderId: '524894987866',
    projectId: 'dish-7997d',
    authDomain: 'dish-7997d.firebaseapp.com',
    storageBucket: 'dish-7997d.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA5OiNy_jiniUsf1WTb094R_rcE-driBd8',
    appId: '1:524894987866:android:ffe33d223779658b175a63',
    messagingSenderId: '524894987866',
    projectId: 'dish-7997d',
    storageBucket: 'dish-7997d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBsQmklob7kFyvCO--Bfp3mua2ZIahCmIg',
    appId: '1:524894987866:ios:9eda37065b205406175a63',
    messagingSenderId: '524894987866',
    projectId: 'dish-7997d',
    storageBucket: 'dish-7997d.appspot.com',
    iosBundleId: 'com.example.dishApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBsQmklob7kFyvCO--Bfp3mua2ZIahCmIg',
    appId: '1:524894987866:ios:9eda37065b205406175a63',
    messagingSenderId: '524894987866',
    projectId: 'dish-7997d',
    storageBucket: 'dish-7997d.appspot.com',
    iosBundleId: 'com.example.dishApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBEEZxTSZCNT9_qvcTfK-qeHkPbXpv15dA',
    appId: '1:524894987866:web:9cce2b24c94254a4175a63',
    messagingSenderId: '524894987866',
    projectId: 'dish-7997d',
    authDomain: 'dish-7997d.firebaseapp.com',
    storageBucket: 'dish-7997d.appspot.com',
  );
}
