import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'page/main_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
    //ddta lihat di file google-services.json
    apiKey: 'AIzaSyB5OVCpVbBwkjZ_pif6VCWNthqKsJ559sc',
    appId: '1:561810984617:android:e6b11a37a36a60b4e0e3b8',
    messagingSenderId: '561810984617',
    projectId: 'prak10-3c283',
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        cardTheme: const CardTheme(surfaceTintColor: Colors.white),
        dialogTheme: const DialogTheme(
            surfaceTintColor: Colors.white, backgroundColor: Colors.white),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pinkAccent),
        useMaterial3: true,
      ),
      home: const MainPage(),
    );
  }
}
