import 'package:flutter/material.dart';
import 'package:uts_yusrina_2407810040013/login_activity.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginActivity(),
    );
  }
}