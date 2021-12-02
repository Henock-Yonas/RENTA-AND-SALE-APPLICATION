import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:folisho/login.dart';
import 'package:folisho/theme.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final TextEditingController _emailController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "Forgot Password?",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              "Enter the email address associated with the account",
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 18),
            Text(
              "We will email you a link to reset your password",
              style: TextStyle(fontSize: 16, color: greyColor),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: TextField(
                decoration: const InputDecoration(
                    hintText: "Email",
                    labelText: "Email",
                    labelStyle: TextStyle(fontSize: 12, color: Colors.black),
                    border: OutlineInputBorder()),
                obscureText: false,
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 200,
              height: 50,
              child: RaisedButton(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                onPressed: () async {
                  resetPassword();
                },
                color: purpleColor,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: const Text(
                  "Next",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => LoginPage()));
              },
              child: const Text(
                "Back to SIGN IN NOW",
                style: TextStyle(color: Colors.green),
              ),
            ),
          ],
        ),
      ),
    );
  }

  resetPassword() async {
    String email = _emailController.text.toString();
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
    } catch (e) {
      Fluttertoast.showToast(msg: e.toString());
    }
  }
}

// Facilities Card
