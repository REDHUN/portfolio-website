import 'package:flutter/material.dart';

class NavBarMobileWidget extends StatelessWidget {
  const NavBarMobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    //double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.all(10),
      height: 60,
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Redhun S.',
            style: TextStyle(fontFamily: 'poppins', fontSize: width / 25),
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Icon(Icons.menu)),
        ],
      ),
    );
  }
}
