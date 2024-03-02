import 'package:flutter/material.dart';
import 'package:grosseryapp/createaccount.dart';
import 'package:grosseryapp/homescreen.dart';
import 'package:grosseryapp/loadingscreen.dart';
import 'package:grosseryapp/onbordingscreen.dart';
import 'package:grosseryapp/page.dart';
import 'package:grosseryapp/signinscreen.dart';
import 'package:grosseryapp/varificationscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const LoadingScreen(),
      // home: const OnbodingScreen(),
      // home: const SigninScreen(),
      // home: CreateAccoutScreen(),
      // home: VarificationScreen(),
      home: HomeScreen(),
      // home: ShoppingApp(),
    );
  }
}

