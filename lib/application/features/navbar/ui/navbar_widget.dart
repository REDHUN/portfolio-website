import 'package:flutter/material.dart';
import 'package:portfolio/application/features/navbar/ui/desktop/navbar_deskop.dart';
import 'package:portfolio/application/features/navbar/ui/mobile/navbar_mobile.dart';
import 'package:portfolio/application/features/navbar/ui/tab/navbar_tab.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBarWidget extends StatelessWidget {
  const NavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (p0) => const NavBarDesktopWidget(),
      tablet: (p0) => const NavBarTabWidget(),
      mobile: (p0) => const NavBarMobileWidget(),
    );
  }
}
