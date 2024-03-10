import 'package:flutter/material.dart';
import 'package:portfolio/application/features/containerfive/desktop/containerfive_desktop.dart';
import 'package:portfolio/application/features/containerfive/mobile/containerfive_mobile.dart';
import 'package:portfolio/application/features/containerfive/tab/containerfive_tab.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ContainerFiveWidget extends StatelessWidget {
  const ContainerFiveWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (p0) => ContainerFiveDesktop(),
      tablet: (p0) => ContainerFiveTab(),
      mobile: (p0) => ContainerFiveMobile(),
    );
  }
}
