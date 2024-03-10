import 'package:flutter/material.dart';
import 'package:portfolio/application/constants/app_colors.dart';

class ContainerThreeDesktop extends StatelessWidget {
  const ContainerThreeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(40),
      //   margin: const EdgeInsets.only(bottom: 100),
      // height: MediaQuery.of(context).size.height - 100,
      child: Stack(
        children: [
          // Align(
          //   alignment: Alignment.bottomLeft,
          //   child: Container(
          //     height: 100,
          //     width: 100,
          //     decoration: BoxDecoration(color: Colors.transparent, boxShadow: [
          //       BoxShadow(
          //         blurRadius: 200,
          //         spreadRadius: 200,
          //         color: AppColors.purple,
          //       )
          //     ]),
          //   ),
          // ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Recent Projects',
                  style: TextStyle(fontSize: 40),
                ),
                const SizedBox(height: 40),
                Center(
                  child: Wrap(
                    runSpacing: 20,
                    spacing: 40,
                    direction: Axis.horizontal,
                    children: [
                      highlightContainer(context, 'Note App',
                          "QuickNotes is your ultimate solution for effortless note-taking on your Android device."),
                      highlightContainer(context, 'Meals App',
                          "MealMate is your ultimate companion for hassle-free meal planning and preparation on your Android device. "),
                      highlightContainer(context, 'Todo App',
                          "TaskMaster is your go-to solution for staying organized and productive on your Android device. "),
                      highlightContainer(context, 'Quiz App',
                          "QuizWiz is your ultimate trivia companion, providing hours of fun and entertainment on your Android device."),
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

  Widget highlightContainer(
      BuildContext context, String textcontent, String appdes) {
    return Container(
        width: MediaQuery.of(context).size.width / 4.4,
        height: 380,
        padding: EdgeInsets.only(top: 20, bottom: 5, right: 20, left: 20),
        margin: EdgeInsets.only(top: 20, right: 20, left: 20),
        decoration: BoxDecoration(
            color: AppColors.purpleDark,
            //color: Colors.orange.shade400,
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: Text(
                  textcontent,
                  style: TextStyle(
                      fontFamily: 'poppins',
                      fontSize: MediaQuery.of(context).size.width / 50),
                ),
              ),
            ),
            Container(
              height: 200,
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.bgColor.withOpacity(0.5),
              ),
              child: Center(child: Text(appdes)),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('Avilable On :'), Icon(Icons.phone_android)],
            ))
          ],
        ));
  }
}
