import 'package:flutter/material.dart';
import 'package:portfolio/application/features/containerfive/containerfivewidget.dart';
import 'package:portfolio/application/features/containerfour/containerfourwidget.dart';
import 'package:portfolio/application/features/containerone/containerone_widget.dart';
import 'package:portfolio/application/features/containerthree/containerthree_widgets.dart';
import 'package:portfolio/application/features/containertwo/containertwo_widget.dart';
import 'package:portfolio/application/features/navbar/ui/navbar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;
    return const Scaffold(
      body: SingleChildScrollView(
        // scrollDirection: Axis.horizontal,
        child: Column(
          //  mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            NavBarWidget(),
            ContainerOneWidget(),
            ContainerTwoWidget(),
            ContainerThreeWidget(),
            ContainerFourWidget(),
            ContainerFiveWidget(),
          ],
        ),
      ),
    );
  }
}
