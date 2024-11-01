import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart'; // Import Firebase
import 'package:women/screens/firstscreen.dart';
import 'screens/bible_of_safety_screen.dart';
import 'theme/app_theme.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: "AIzaSyD75tX1iaY4_K6eubGzEVFjMfFSkknn53o",
        appId: "1:1052917716513:web:8638f54abfa78e686af560",
        messagingSenderId: "1052917716513",
        projectId: "women-7b6cb",
        // Your web Firebase config options
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Safety App',
      theme: ThemeData(
        primaryColor: AppTheme.buttonColor,
        scaffoldBackgroundColor: AppTheme.backgroundColor,
        fontFamily: 'Roboto',  // You can set a default font family here
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: AppTheme.textColor),
        ),
      ),
      home: WelcomeScreen(),
    );
  }
}

