import 'package:flutter/material.dart';
import 'package:portfolio/application/widgets/mainpagebutton.dart';
import 'package:rive/rive.dart';
import 'package:social_media_flutter/widgets/icons.dart';
import 'package:social_media_flutter/widgets/text.dart';

class ContainerOneMobile extends StatefulWidget {
  const ContainerOneMobile({super.key});

  @override
  State<ContainerOneMobile> createState() => _ContainerOneMobileState();
}

class _ContainerOneMobileState extends State<ContainerOneMobile> {
  StateMachineController? controller;

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: width / 14,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: width / 14 - 4,
            //  backgroundImage: const AssetImage(AppImages.selfImage),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'Redhun S',
            style: TextStyle(fontFamily: 'poppins', fontSize: width / 30),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            ' i am a flutter developer',
            style: TextStyle(fontFamily: 'poppins', fontSize: width / 30),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(width: 100, child: MainPageButton()),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              socialIcon('https://www.instagram.com/akshitmadan_/',
                  SocialIconsFlutter.instagram),
              socialIcon(
                  'https://github.com/akmadan', SocialIconsFlutter.github),
              socialIcon('https://www.linkedin.com/in/akshit-madan-394a82a6/',
                  SocialIconsFlutter.linkedin_box),
              socialIcon(
                  'https://www.youtube.com/channel/UCBlphb6_k7X1P28OCYXMsWg',
                  SocialIconsFlutter.youtube)
            ],
          ),
        ),

        // Container(
        //   height: height / 2,
        //   width: width / 3,
        //   child: RiveAnimation.asset(
        //     'assets/rivimage/cat_following_the_mouse.riv',
        //     fit: BoxFit.contain,
        //     stateMachines: ['state'],
        //     onInit: ((artboard) {
        //       controller = StateMachineController.fromArtboard(
        //           artboard, 'State Machine 1');
        //       if (controller == null) return;
        //       artboard.addController(controller!);
        //     }),
        //   ),
        // ),
        const SizedBox(
          height: 30,
        )
      ],
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
