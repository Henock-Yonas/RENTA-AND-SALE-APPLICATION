import 'package:flutter/material.dart';
import 'package:folisho/login.dart';
import 'package:folisho/rent_addBR.dart';
import 'package:folisho/rent_addC.dart';
import 'package:folisho/rent_addGp.dart';
import 'package:folisho/rent_addLS.dart';
import 'package:folisho/rent_addOne.dart';
import 'package:folisho/rent_addS.dart';
import 'package:folisho/rent_readBR.dart';
import 'package:folisho/rent_readC.dart';
import 'package:folisho/rent_readL.dart';
import 'package:folisho/rent_readS.dart';
import 'package:folisho/rent_read_Gplus.dart';
import 'package:folisho/rent_read_one.dart';
import 'package:folisho/theme.dart';

class RentAddDashboard extends StatelessWidget {
  const RentAddDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 200,
              height: 50,
              child: RaisedButton(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                onPressed: () {
                  Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (content) => const RentAddGPlus()));
                },
                color: purpleColor,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: const Text(
                  "ዘመናዊ ፎቅ",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 200,
              height: 50,
              child: RaisedButton(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                onPressed: () {
                  Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (content) => const RentAddLS()));
                },
                color: purpleColor,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: const Text(
                  "ኤል-ሼፕ ሙሉ ጊቢ",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 200,
              height: 50,
              child: RaisedButton(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                onPressed: () {
                  Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (content) => const RentAddS()));
                },
                color: purpleColor,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: const Text(
                  "ሱቅ፣ አንድ ክፍል",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 200,
              height: 50,
              child: RaisedButton(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                onPressed: () {
                  Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (content) => const RentAddC()));
                },
                color: purpleColor,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: const Text(
                  "ኮንዶሚንየም",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 200,
              height: 50,
              child: RaisedButton(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                onPressed: () {
                  Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (content) => const RentAddBR()));
                },
                color: purpleColor,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: const Text(
                  "ባለመኝታ ክፍል",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 200,
              height: 50,
              child: RaisedButton(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                onPressed: () {
                  Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (content) => const RentAddOne()));
                },
                color: purpleColor,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: const Text(
                  "አንድ ክፍል",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Facilities Card
