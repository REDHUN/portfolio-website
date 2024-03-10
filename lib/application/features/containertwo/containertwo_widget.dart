import 'package:flutter/material.dart';
import 'package:portfolio/application/features/containertwo/desktop/containertwo_desktop.dart';
import 'package:portfolio/application/features/containertwo/mobile/containertwo_mobile.dart';
import 'package:portfolio/application/features/containertwo/tab/containertwo_tab.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ContainerTwoWidget extends StatelessWidget {
  const ContainerTwoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (p0) => const ContainerTwoDesktop(),
      tablet: (p0) => const ContainerTwoTab(),
      mobile: (p0) => const ContainerTwoMobile(),
    );
  }
}
