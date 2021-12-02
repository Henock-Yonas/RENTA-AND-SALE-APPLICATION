import 'package:flutter/material.dart';
import 'package:folisho/login.dart';
import 'package:folisho/rent_readBR.dart';
import 'package:folisho/rent_readC.dart';
import 'package:folisho/rent_readL.dart';
import 'package:folisho/rent_readS.dart';
import 'package:folisho/rent_read_Gplus.dart';
import 'package:folisho/rent_read_one.dart';
import 'package:folisho/theme.dart';

class RentReadDashboard extends StatelessWidget {
  const RentReadDashboard({Key? key}) : super(key: key);

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
                                builder: (content) => const RentReadGPlus()));
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
                                builder: (content) => const RentReadL()));
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
                                builder: (content) => const RentReadS()));
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
                                builder: (content) => const RentReadC()));
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
                                builder: (content) => const RentReadBR()));
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
                                builder: (content) => const RentReadOne()));
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
