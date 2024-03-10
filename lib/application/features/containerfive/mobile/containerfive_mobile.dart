import 'package:flutter/material.dart';
import 'package:social_media_flutter/widgets/icons.dart';
import 'package:social_media_flutter/widgets/text.dart';

class ContainerFiveMobile extends StatelessWidget {
  const ContainerFiveMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(40),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Contact Me',
            style: TextStyle(
                fontSize: MediaQuery.of(context).size.width / 15,
                color: Colors.white),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'redhuns123@gmail.com\n8921046985',
            style: TextStyle(
                fontSize: MediaQuery.of(context).size.width / 30,
                color: Colors.white),
          ),
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                socialIcon('https://www.instagram.com/akshitmadan_/',
                    SocialIconsFlutter.instagram, context),
                socialIcon('https://github.com/akmadan',
                    SocialIconsFlutter.github, context),
                socialIcon('https://www.linkedin.com/in/akshit-madan-394a82a6/',
                    SocialIconsFlutter.linkedin_box, context),
                socialIcon(
                    'https://www.youtube.com/channel/UCBlphb6_k7X1P28OCYXMsWg',
                    SocialIconsFlutter.youtube,
                    context)
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          const Divider(),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              'developed by Redhun using Flutter 3.19.2',
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width / 35,
                  color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  Widget socialIcon(String link, IconData iconPath, BuildContext context) {
    return InkWell(
      // onTap: () => html.window.open(link, '_blank'),
      child: SocialWidget(
        iconSize: MediaQuery.of(context).size.width / 20,
        placeholderText: '',
        iconData: iconPath,
        iconColor: Colors.white,
        link: link,
      ),
    );
  }
}
