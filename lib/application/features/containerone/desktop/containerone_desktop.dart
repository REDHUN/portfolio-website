import 'package:flutter/material.dart';
import 'package:portfolio/application/constants/appimages.dart';
import 'package:portfolio/application/widgets/mainpagebutton.dart';
import 'package:rive/rive.dart';
import 'package:social_media_flutter/widgets/icons.dart';
import 'package:social_media_flutter/widgets/text.dart';

class ContainerOneDesktop extends StatefulWidget {
  const ContainerOneDesktop({super.key});

  @override
  State<ContainerOneDesktop> createState() => _ContainerOneDesktopState();
}

class _ContainerOneDesktopState extends State<ContainerOneDesktop> {
  StateMachineController? controller;

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      // color: Colors.white,
      padding:
          EdgeInsets.symmetric(horizontal: width / 30, vertical: width / 30),
      height: height,
      width: width,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: height,
              width: width / 1.5,
              child: RiveAnimation.asset(
                AppImages.bgimage,
                fit: BoxFit.cover,
                stateMachines: ['state'],
                onInit: ((artboard) {
                  controller = StateMachineController.fromArtboard(
                      artboard, 'State Machine 1');
                  if (controller == null) return;
                  artboard.addController(controller!);
                }),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 400,
              width: 400,
              child: RiveAnimation.asset(
                AppImages.bgimage2,
                fit: BoxFit.cover,
                stateMachines: ['state'],
                onInit: ((artboard) {
                  controller = StateMachineController.fromArtboard(
                      artboard, 'State Machine 1');
                  if (controller == null) return;
                  artboard.addController(controller!);
                }),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: width / 14,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: width / 14 - 4,
                      // backgroundImage: const AssetImage(
                      //   AppImages.selfImage,
                      // ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'Hi I Am Redhun\n A Flutter Developer',
                      style: TextStyle(
                          fontFamily: 'poppins', fontSize: width / 30),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 200,
                  ),
                  MainPageButton(),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                child: Row(
                  children: [
                    socialIcon('https://www.instagram.com/akshitmadan_/',
                        SocialIconsFlutter.instagram),
                    socialIcon('https://github.com/akmadan',
                        SocialIconsFlutter.github),
                    socialIcon(
                        'https://www.linkedin.com/in/akshit-madan-394a82a6/',
                        SocialIconsFlutter.linkedin_box),
                    socialIcon(
                        'https://www.youtube.com/channel/UCBlphb6_k7X1P28OCYXMsWg',
                        SocialIconsFlutter.youtube)
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget socialIcon(String link, IconData iconPath) {
    return InkWell(
      // onTap: () => html.window.open(link, '_blank'),
      child: SocialWidget(
        placeholderText: '',
        iconData: iconPath,
        iconColor: Colors.white,
        link: link,
      ),
    );
  }
}
