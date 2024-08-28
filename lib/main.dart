import 'package:flutter/material.dart';
import 'package:responsivedesign/presentation/screens/home_screen.dart';

void main(){
  runApp(RSAApp());
}
class RSAApp extends StatelessWidget {
  const RSAApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
