import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 10000,
          width: 500,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 20, 188, 25),
            // shape: BoxShape.circle,
            image: DecorationImage(
                image: AssetImage("asstes/image/Group 87 (1).png"), scale: 3),
          ),
        ),
      ),
    );
  }
}
