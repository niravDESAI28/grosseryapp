import 'package:flutter/material.dart';
import 'package:grosseryapp/bordingscreen/page2.dart';
import 'package:grosseryapp/loadingscreen.dart/loading.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

      // home: LoadingScreen(),
      home: Second_onboding(),
    );
  }
}
