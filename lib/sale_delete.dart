// ignore: file_names
// ignore: file_names
// ignore_for_file: unused_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:folisho/login.dart';
import 'package:folisho/theme.dart';

class SaleDelete extends StatelessWidget {
  const SaleDelete({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "መረጃ መሙያ",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                    hintText: "የቤቱ አይነት",
                    labelText: "የቤቱ አይነት",
                    labelStyle: TextStyle(fontSize: 12, color: Colors.black),
                    border: OutlineInputBorder()),
                obscureText: false,
              ),
              RaisedButton(
                onPressed: () {
                  print("what");
                },
                color: Colors.red,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Text(
                  "Delete",
                  style: TextStyle(color: whiteColor),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                    hintText: "አድራሻ",
                    labelText: "አድራሻ",
                    labelStyle: TextStyle(fontSize: 12, color: Colors.black),
                    border: OutlineInputBorder()),
                obscureText: false,
              ),
              RaisedButton(
                onPressed: () {
                  print("what");
                },
                color: Colors.red,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Text(
                  "Delete",
                  style: TextStyle(color: whiteColor),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                    hintText: "የደላላው ስም",
                    labelText: "የደላላው ስም",
                    labelStyle: TextStyle(fontSize: 12, color: Colors.black),
                    border: OutlineInputBorder()),
                obscureText: false,
              ),
              RaisedButton(
                onPressed: () {
                  print("what");
                },
                color: Colors.red,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Text(
                  "Delete",
                  style: TextStyle(color: whiteColor),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                    hintText: "የደላላው ስልክ",
                    labelText: "የደላላው ስልክ",
                    labelStyle: TextStyle(fontSize: 12, color: Colors.black),
                    border: OutlineInputBorder()),
                obscureText: false,
              ),
              RaisedButton(
                onPressed: () {
                  print("what");
                },
                color: Colors.red,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Text(
                  "Delete",
                  style: TextStyle(color: whiteColor),
                ),
              ),
              SizedBox(height: 20),
              RaisedButton(
                onPressed: () {
                  print("what");
                },
                color: purpleColor,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Text(
                  "የቤቱ ገጽታ ፎቶ ያስገቡትን ያጥፉ",
                  style: TextStyle(color: whiteColor),
                ),
              ),
              SizedBox(height: 20),
              RaisedButton(
                onPressed: () {
                  print("what");
                },
                color: purpleColor,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Text(
                  "የቤቱ ገጽታ በዝርዝር ፎቶ ያስገቡትን ያጥፉ",
                  style: TextStyle(color: whiteColor),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                    hintText: "ማብራሪያ",
                    labelText: "ማብራሪያ",
                    labelStyle: TextStyle(fontSize: 12, color: Colors.black),
                    border: OutlineInputBorder()),
                obscureText: false,
              ),
              RaisedButton(
                onPressed: () {
                  print("what");
                },
                color: Colors.red,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Text(
                  "Delete",
                  style: TextStyle(color: whiteColor),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                    hintText: "ዋጋ",
                    labelText: "ዋጋ",
                    labelStyle: TextStyle(fontSize: 12, color: Colors.black),
                    border: OutlineInputBorder()),
                obscureText: false,
              ),
              RaisedButton(
                onPressed: () {
                  print("what");
                },
                color: Colors.red,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Text(
                  "Delete",
                  style: TextStyle(color: whiteColor),
                ),
              ),
              SizedBox(height: 20),
              RaisedButton(
                onPressed: () {
                  print("what");
                },
                color: purpleColor,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Text(
                  "submit",
                  style: TextStyle(color: whiteColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// Facilities Card
        