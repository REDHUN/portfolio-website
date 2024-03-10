import 'package:flutter/material.dart';
import 'package:portfolio/application/features/containerthree/desktop/containerthree_desktop.dart';
import 'package:portfolio/application/features/containerthree/mobile/containerthree_mobile.dart';
import 'package:portfolio/application/features/containerthree/tab/containerthree_tab.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ContainerThreeWidget extends StatelessWidget {
  const ContainerThreeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (p0) => const ContainerThreeDesktop(),
      tablet: (p0) => const ContainerThreeTab(),
      mobile: (p0) => const ContainerThreeMobile(),
    );
  }
}
