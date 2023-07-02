import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OptionWidget extends StatelessWidget {
  const OptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 20, bottom: 20),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.blue.shade500,
              blurRadius: 40,
              spreadRadius: -20,
              offset: const Offset(8, 20),
            ),
          ],
          color: const Color.fromRGBO(98, 166, 247, 9),
          borderRadius: BorderRadius.circular(20),
        ),
        height: 100,
        width: 75,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
                child: Image.asset(
                  'assets/hotel.png',
                  fit: BoxFit.fill,
                ),
              ),
              Text(
                'Hotel',
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
