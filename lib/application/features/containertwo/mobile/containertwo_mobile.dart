import 'package:flutter/material.dart';
import 'package:portfolio/application/constants/app_colors.dart';

class ContainerTwoMobile extends StatelessWidget {
  const ContainerTwoMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(40),
      //   margin: const EdgeInsets.only(bottom: 100),
      // height: MediaQuery.of(context).size.height - 100,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(color: Colors.transparent, boxShadow: [
                BoxShadow(
                  blurRadius: 200,
                  spreadRadius: 100,
                  color: AppColors.purple.withOpacity(0.4),
                )
              ]),
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'What I Can Do',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 20),
                ),
                const SizedBox(height: 40),
                Center(
                  child: Wrap(
                    runSpacing: 20,
                    spacing: 40,
                    direction: Axis.horizontal,
                    children: [
                      highlightContainer(context, 'Android Development'),
                      highlightContainer(context, 'Ios Development'),
                      highlightContainer(context, 'Web Development'),
                      highlightContainer(context, 'Windows App Development'),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget highlightContainer(BuildContext context, String textcontent) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 130,
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 25),
        decoration: BoxDecoration(
            color: AppColors.purpleDark,
            borderRadius: BorderRadius.circular(20)),
        child: Center(
          child: Text(
            textcontent,
            style: TextStyle(
                fontFamily: 'poppins',
                fontSize: MediaQuery.of(context).size.width / 20),
          ),
        ));
  }
}
