import 'package:flutter/material.dart';
import 'package:uts_yusrina_2407810040013/menu.dart';

class LoginActivity extends StatefulWidget {
  const LoginActivity({super.key});

  @override
  State<LoginActivity> createState() => _LoginActivityState();
}

class _LoginActivityState extends State<LoginActivity> {
  bool _showpassword = true;
  bool _keepLoggedIn = true;
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

                Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Checkbox(
                    value: _keepLoggedIn, 
                    onChanged: (value) {
                      setState(() {
                        _keepLoggedIn = value!;
                      });
                    }
                  ),
                  Text("Keep me logged in"),
                ],
              ),
            )
              ],
            ), 
            ),

            Padding(padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Menu(),
                      ),
                    );
                  }, 
                  child: Text("Login"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(10),
                    ),
                  ),
                ),
              ],
            ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Belum Punya Akun? "),
                  Text("Daftar di sini",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}