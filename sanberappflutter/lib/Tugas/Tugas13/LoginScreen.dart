import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 60),
              Center(
                child: Text.rich(
                  TextSpan(text: "Sanber Flutter"),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.lightBlue,
                    fontSize: 50,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Image.asset(
                  "/icon/flutter.png",
                  height: 150,
                ),
              ),
              SizedBox(height: 30),
              TextField(
                  decoration: InputDecoration(
                hintText: 'Username',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.lightBlue, width: 2),
                ),
              )),
              SizedBox(height: 20),
              TextField(
                  decoration: InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.lightBlue, width: 2),
                ),
              )),
              SizedBox(height: 10),
              Center(
                child: Text.rich(
                  TextSpan(text: "Forgot Password"),
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Colors.lightBlue,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                width: 1000,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Login'),
                  style: ElevatedButton.styleFrom(primary: Colors.lightBlue),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text.rich(
                    TextSpan(text: "Doesn't have account?"),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text.rich(
                    TextSpan(text: "Sign Up"),
                    style: TextStyle(
                      color: Colors.lightBlue,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 70),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("icon/Roma.png", width: 180),
                  Image.asset("icon/Tokyo.png", width: 180),
                ],
              )
            ],
          )),
    );
  }
}
