import 'package:flutter/material.dart';

class NavbarTabContainer extends StatelessWidget {
  const NavbarTabContainer({super.key, required this.content});
  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: TextButton(
          onPressed: () {},
          style: const ButtonStyle(
              alignment: Alignment.bottomCenter,
              foregroundColor: MaterialStatePropertyAll(Colors.white)),
          child: Text(
            content,
            style: const TextStyle(
                fontSize: 15,
                //  fontWeight: FontWeight.bold,
                fontFamily: 'poppins'),
          )),
    );
  }
}
