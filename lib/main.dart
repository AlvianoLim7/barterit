import 'package:barterit/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Barter It',
      theme: ThemeData(
      
        primarySwatch: Colors.lightGreen ,
      ),
      home: const SplashScreen(),
    );
  }
}

