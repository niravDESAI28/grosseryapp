import 'package:flutter/material.dart';
import 'package:grosseryapp/cart/addtocartscreen.dart';
import 'package:grosseryapp/createaccount.dart';
import 'package:grosseryapp/deliveryscreen.dart';
import 'package:grosseryapp/homescreen.dart';
import 'package:grosseryapp/loadingscreen.dart';
import 'package:grosseryapp/map_pass.dart';
import 'package:grosseryapp/onbordingscreen.dart';
import 'package:grosseryapp/page.dart';
import 'package:grosseryapp/paymentscreenscreen.dart';
import 'package:grosseryapp/profilescreen.dart';
import 'package:grosseryapp/profilrscreen.dart';
import 'package:grosseryapp/shopscreen.dart';
import 'package:grosseryapp/signinscreen.dart';
import 'package:grosseryapp/storescreen.dart';
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
      // home: HomeScreen(),
      // home: ShoppingApp(),
      home: StoreScreen(),
      // home: ShopScreen(),
      // home: DeliveryScreen(),
      // home: MapViewScreen(),
      // home: ShoppingProfilePage(),
      // home: PaymentMethodScreen(),
      // home: Screen9State(),
    );
  }
}

  