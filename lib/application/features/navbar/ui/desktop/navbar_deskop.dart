import 'package:flutter/material.dart';
import 'package:portfolio/application/widgets/navbar_container_desktop.dart';

class NavBarDesktopWidget extends StatelessWidget {
  const NavBarDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 40,
      width: double.maxFinite,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Redhun S.',
            style: TextStyle(fontFamily: 'poppins', fontSize: 25),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NavbarDesktopContainer(content: 'Home'),
              NavbarDesktopContainer(content: 'Portfolio'),
              NavbarDesktopContainer(content: 'Resume'),
              NavbarDesktopContainer(content: 'About Me')
            ],
          )
        ],
      ),
    );
  }
}
