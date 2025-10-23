import 'package:flutter/material.dart';

class LoginActivity extends StatefulWidget {
  const LoginActivity({super.key});

  @override
  State<LoginActivity> createState() => _LoginActivityState();
}

class _LoginActivityState extends State<LoginActivity> {
  bool _showpassword = true;
  final TextEditingController _emailcontroller = 
  TextEditingController();
  final TextEditingController _passwordcontroller = 
  TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Activity"),
      ),
      body: Center(
        child: Column(
          children: [
            Image(image: AssetImage("gambar/Logo.png"), width: 200, height: 150),
            SizedBox(height: 12),
            Text(
              "LKS MART",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.blueAccent),
            ),
            
            Text(
              "Sign In",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
              ),

            Text(
              "Enter your ID and password to sign in!",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal, color: Colors.grey),
              ),

            Padding(padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 8,
              children: [
                Text("Email"),
                TextField(
                  controller: _emailcontroller,
                  decoration: InputDecoration(
                    hintText: "email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)
                    ),
                  ),
                ),
                Text("Password*"),
                TextField(
                  controller: _passwordcontroller,
                  obscureText: _showpassword,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _showpassword = !_showpassword;
                        });
                      },
                      icon: Icon(
                        _showpassword ? Icons.remove_red_eye : Icons.visibility_off,
                      ),
                    ),
                    hintText: "Min 8 character",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),

                Text(
              "Keep me logged in",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal, color: Colors.black),
              ),
              ],
            ),
            ),

          ],
        ),
      ),
    );
  }
}