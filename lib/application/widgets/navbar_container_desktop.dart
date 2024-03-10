import 'package:flutter/material.dart';

class NavbarDesktopContainer extends StatelessWidget {
  const NavbarDesktopContainer({super.key, required this.content});
  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: TextButton(
          onPressed: () {},
          style: const ButtonStyle(
              alignment: Alignment.bottomCenter,
              foregroundColor: MaterialStatePropertyAll(Colors.white)),
          child: Text(
            content,
            style: const TextStyle(
                fontSize: 18,
                //  fontWeight: FontWeight.bold,
                fontFamily: 'poppins'),
          )),
    );
  }
}
