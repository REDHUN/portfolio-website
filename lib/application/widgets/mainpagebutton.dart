import 'package:flutter/material.dart';
import 'package:portfolio/application/constants/app_colors.dart';

class MainPageButton extends StatelessWidget {
  const MainPageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        child: Center(
          child: Text(
            'Ask',
            style: TextStyle(
                fontFamily: 'poppins',
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.white),
          ),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(AppColors.orenge),
          shape: MaterialStatePropertyAll(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0))),
        ));
  }
}
