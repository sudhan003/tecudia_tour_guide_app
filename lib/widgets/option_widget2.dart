import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OptionWidgetTwo extends StatelessWidget {
  final String text;
  final String imagePath;
  final double height;

  // final IconData iconData;

  const OptionWidgetTwo(
      {super.key,
      required this.text,
      required this.imagePath,
      required this.height});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        right: 20,
        bottom: 20,
      ),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey[300]!, width: 0.8),
            color: Colors.white,
            borderRadius: BorderRadius.circular(20)),
        height: 90,
        width: 75,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                imagePath,
                height: height,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(text,
                  style: GoogleFonts.montserrat(
                    color: Colors.grey,
                    fontSize: 12,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
