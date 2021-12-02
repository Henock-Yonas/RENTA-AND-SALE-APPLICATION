import 'package:flutter/material.dart';
import 'package:folisho/rent_add_dashboard.dart';
import 'package:folisho/rent_delete_dashboard.dart';
import 'package:folisho/rent_detail.dart';
import 'package:folisho/rent_edit_dashboard.dart';
import 'package:folisho/rent_read_dashboard.dart';
import 'package:folisho/sale_add.dart';
import 'package:folisho/sale_delete.dart';
import 'package:folisho/sale_edit.dart';
import 'package:folisho/sale_read.dart';
import 'package:folisho/theme.dart';

class SaleDashboard extends StatelessWidget {
  const SaleDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteColor,
        body: Container(
          padding: const EdgeInsets.only(top: 150),
          child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            children: [
              Card(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (content) => const SaleRead()));
                  },
                  child: Image.asset(
                    "assets/read_data.png",
                    scale: 4,
                  ),
                ),
              ),
              Card(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (content) => const SaleAdd()));
                  },
                  child: Image.asset(
                    "assets/add_data.jpg",
                    scale: 2,
                  ),
                ),
              ),
              Card(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (content) => const SaleEdit()));
                  },
                  child: Image.asset(
                    "assets/edit_data.png",
                    scale: 7,
                  ),
                ),
              ),
              Card(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (content) => const SaleDelete()));
                  },
                  child: Image.asset(
                    "assets/delete_data.jpg",
                    scale: 2,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
// Slider card

