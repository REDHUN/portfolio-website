import 'package:flutter/material.dart';
import 'package:portfolio/application/constants/app_colors.dart';

class ContainerFourDesktop extends StatelessWidget {
  const ContainerFourDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(40),
      width: MediaQuery.of(context).size.width,
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

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: const Text(
                  'Get In Touch',
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
              ),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width - 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: AppColors.purpleDark,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: AppColors.bgColor.withOpacity(0.5),
                            ),
                            margin: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 30),
                            height: 60,
                            width:
                                (MediaQuery.of(context).size.width / 2) - 250,
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: 'Name',
                                  fillColor: Colors.white,
                                  filled: false,
                                  contentPadding: EdgeInsets.all(12.0),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.zero)),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: AppColors.bgColor.withOpacity(0.5),
                            ),
                            margin: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 30),
                            height: 60,
                            width:
                                (MediaQuery.of(context).size.width / 2) - 250,
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: 'Email',
                                  fillColor: Colors.white,
                                  filled: false,
                                  contentPadding: EdgeInsets.all(12.0),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.zero)),
                            ),
                          )
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: AppColors.bgColor.withOpacity(0.5),
                        ),
                        margin:
                            EdgeInsets.only(right: 10, left: 10, bottom: 50),
                        height: 200,
                        width: (MediaQuery.of(context).size.width) - 450,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Your Message',
                              fillColor: Colors.white,
                              filled: false,
                              contentPadding: EdgeInsets.all(12.0),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.zero)),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
