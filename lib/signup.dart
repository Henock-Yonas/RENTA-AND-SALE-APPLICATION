import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:folisho/login.dart';


class SignupPage extends StatefulWidget {
  const SignupPage({ Key? key }) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
 final GlobalKey<FormState> _formKey =GlobalKey<FormState>();
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confpasswordController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          height: MediaQuery.of(context).size.height - 50,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    "Sign up",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff5F6AC4)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "አካውንት እዚህ ይክፈቱ ",
                    style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  inputFile(label: "Username",
                  controller: _userNameController,
                              validator: (String value) {
                                if (value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },),
                  inputFile(label: "Email",
                   controller: _emailController,
                              validator: (String value) {
                                if (value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                            ),
                  inputFile(label: "Password", obscureText: true,
                  controller: _passwordController,
                              validator: (String value) {
                                if (value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                              ),
                  inputFile(label: "Confirm Password ", obscureText: true,
                  controller: _confpasswordController,
                              validator: (String value) {
                                if (value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },),
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 3, left: 3),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
               boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.8),
                          spreadRadius: 10,
                          blurRadius: 5,
                          offset: Offset(0,7), // changes position of shadow
                        ),
                      ],
                    ),
                child: MaterialButton(
                  minWidth: double.infinity,
                  height: 60,
                  onPressed: ()  async {
                      if (_formKey.currentState.validate()) {
                          _register();
                      }
                    },
                  color: const Color(0xff5F6AC4),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Text(
                    "Sign up",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => LoginPage()));
                },
                child: const Text(
                  "Already have an account? Login",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
   @override
  void dispose()  {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

   void _register()async{
    String email = _emailController.text.trim();
    String password = _passwordController.text.trim();
    String confirmpassword = _confpasswordController.text.trim();
    if(password == confirmpassword) {
      try {
        final User? user = (await _auth.createUserWithEmailAndPassword(
            email: email, password: password)).user;
        setState(() {
          if (user != null) {
            Fluttertoast.showToast(msg: "user created");
            Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => const LoginPage()),);
          }
        });
      } catch (e) {
        Fluttertoast.showToast(msg: e.toString());
      }
    }
    else{
      Fluttertoast.showToast(msg: "Passwords don't match");
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
        style: TextStyle(
            fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
      ),
      SizedBox(
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
      SizedBox(
        height: 10,
      )
    ],
  );
}

