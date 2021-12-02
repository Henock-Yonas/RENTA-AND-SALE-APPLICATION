import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:folisho/admin_main.dart';
import 'package:folisho/forget_password.dart';
import 'package:folisho/signup.dart';
import 'package:folisho/theme.dart';

class LoginPage extends StatefulWidget {


  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: whiteColor,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    const Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff5F6AC4)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "ወደ አካውንቶ ይግቡ",
                      style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    
                    children: <Widget>[
                      inputFile(
                          controller: _emailController,
                          validator: (String value) {
                            if (value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                          label: "Email"),
                      inputFile(
                        label: "Password",
                        obscureText: true,
                        controller: _passwordController,
                        validator: (String value) {
                          if (value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    padding: const EdgeInsets.only(top: 3, left: 3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.8),
                          spreadRadius: 10,
                          blurRadius: 5,
                          offset: Offset(0, 7), // changes position of shadow
                        ),
                      ],
                    ),
                    child: MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: () async {
                        if (_formKey.currentState.validate()) {
                          setState(() {
                            _signInWithEmailAndPassword();
                          });
                        }
                      },
                      color: const Color(0xff5F6AC4),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const ForgotPassword()));
                  },
                  child: const Text(
                    "forget password",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const SignupPage()));
                  },
                  child: const Text(
                    "Don't have an account? Sign Up",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 100),
                  height: 200,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/background.png"),
                        fit: BoxFit.fitHeight),
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }

  _signInWithEmailAndPassword() async {
    try {
      final User? user = (await _firebaseAuth.signInWithEmailAndPassword(
              email: _emailController.text.trim(),
              password: _passwordController.text.trim()))
          .user;
      if (user != null) {
        setState(() {
          Fluttertoast.showToast(msg: "Signed In Sucessfully");
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const AdminMain()),
          );
        });
      }
    } catch (e) {
      Fluttertoast.showToast(msg: e.toString());
    }
  }
}

// we will be creating a widget for text field
Widget inputFile({label, obscureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style: const TextStyle(
            fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
      ),
      const SizedBox(
        height: 5,
      ),
      TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            border:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.grey))),
      ),
      const SizedBox(
        height: 10,
      )
    ],
  );
}
