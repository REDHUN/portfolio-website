import 'package:flutter/material.dart';
import 'package:portfolio/application/widgets/navbar_container_tab.dart';

class NavBarTabWidget extends StatelessWidget {
  const NavBarTabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 60,
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
              NavbarTabContainer(content: 'Home'),
              NavbarTabContainer(content: 'Portfolio'),
              NavbarTabContainer(content: 'Resume'),
              NavbarTabContainer(content: 'About Me')
            ],
          )
        ],
      ),
    );
  }
}
