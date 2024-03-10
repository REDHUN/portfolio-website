import 'package:flutter/material.dart';
import 'package:portfolio/application/features/containerone/desktop/containerone_desktop.dart';
import 'package:portfolio/application/features/containerone/mobile/containerone_mobile.dart';
import 'package:portfolio/application/features/containerone/tab/containerone_tab.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ContainerOneWidget extends StatelessWidget {
  const ContainerOneWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (p0) => ContainerOneDesktop(),
      tablet: (p0) => ContainerOneTab(),
      mobile: (p0) => ContainerOneMobile(),
    );
  }
}
