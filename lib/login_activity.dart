import 'package:flutter/material.dart';

class LoginActivity extends StatelessWidget {
  const LoginActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Activity"),
      ),
      body: Column(
        children: [
          Image(image: AssetImage("gambar/Logo.png"), width: 200, height: 150),
        ],
      ),
    );
  }
}