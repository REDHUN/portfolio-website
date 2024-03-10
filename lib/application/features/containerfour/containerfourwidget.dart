import 'package:flutter/material.dart';
import 'package:portfolio/application/features/containerfour/desktop/containerfour_desktop.dart';
import 'package:portfolio/application/features/containerfour/mobile/containerfour_mobile.dart';
import 'package:portfolio/application/features/containerfour/tab/containerfour_tab.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ContainerFourWidget extends StatelessWidget {
  const ContainerFourWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (p0) => ContainerFourDesktop(),
      tablet: (p0) => ContainerFourTab(),
      mobile: (p0) => ContainerFourMobile(),
    );
  }
}
