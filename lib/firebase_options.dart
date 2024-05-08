import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
    apiKey: 'AIzaSyAHbsM9DPy_cguyIQvPZj7gS0oqLAjEuLk',
    appId: '1:555075222965:web:231ad274d2bc58e4196dfc',
    messagingSenderId: '555075222965',
    projectId: 'iotproject-skom',
    authDomain: 'iotproject-skom.firebaseapp.com',
    storageBucket: 'iotproject-skom.appspot.com',
    measurementId: 'G-FPKQ4YTY76',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB0oCodVVstYuavrktWGm-0b77wyluQkLE',
    appId: '1:555075222965:android:1dfb0df40d73c9ac196dfc',
    messagingSenderId: '555075222965',
    projectId: 'iotproject-skom',
    storageBucket: 'iotproject-skom.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDUnwdbcTuVbGoYV2GgoJShNrMW2hxr_mU',
    appId: '1:555075222965:ios:9f14c527d6decc2e196dfc',
    messagingSenderId: '555075222965',
    projectId: 'iotproject-skom',
    storageBucket: 'iotproject-skom.appspot.com',
    iosBundleId: 'com.example.iot',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDUnwdbcTuVbGoYV2GgoJShNrMW2hxr_mU',
    appId: '1:555075222965:ios:9f14c527d6decc2e196dfc',
    messagingSenderId: '555075222965',
    projectId: 'iotproject-skom',
    storageBucket: 'iotproject-skom.appspot.com',
    iosBundleId: 'com.example.iot',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAHbsM9DPy_cguyIQvPZj7gS0oqLAjEuLk',
    appId: '1:555075222965:web:952d209ff795f22b196dfc',
    messagingSenderId: '555075222965',
    projectId: 'iotproject-skom',
    authDomain: 'iotproject-skom.firebaseapp.com',
    storageBucket: 'iotproject-skom.appspot.com',
    measurementId: 'G-Y1DXLYHQEY',
  );
}
