import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:whatsup_app/Screens/Homescreen.dart';

import 'Screens/CameraScreen.dart';
import 'Screens/LoginScreen.dart';

// void main() {
//   runApp(const MyApp());
// }
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  cameras = await availableCameras();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Theme Example',
      theme: ThemeData(
        primaryColor: Colors.teal, // Primary color for the app.
        fontFamily: 'OpenSans', // Global font family.
        scaffoldBackgroundColor: Colors.grey[100], // Default background color.
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.grey,
        ).copyWith(
          secondary:
              Colors.orange, // Use for floating buttons, progress bars, etc.
        ),
        textTheme: TextTheme(
          displayLarge: TextStyle(
              fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black),
          bodyLarge: TextStyle(fontSize: 16, color: Colors.grey[800]),
        ),
        appBarTheme: AppBarTheme(
          color: Colors.teal, // AppBar background color.
          elevation: 4, // AppBar shadow elevation.
          titleTextStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.teal, // Text color.
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.grey[200],
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.grey),
          ),
        ),
      ),
      home: LoginScreen(),
    );
  }
}
