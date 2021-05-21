import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: ListView(
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
                textAlign: TextAlign.center,
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
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                child: const Text('Login'),
                style: ElevatedButton.styleFrom(primary: Colors.lightBlue),
              ),
            ),
            SizedBox(height: 20),
            Wrap(
              alignment: WrapAlignment.spaceEvenly,
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
            Wrap(
              alignment: WrapAlignment.center,
              children: [
                Image.asset("icon/Roma.png", width: 130),
                Image.asset("icon/Tokyo.png", width: 130),
              ],
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
