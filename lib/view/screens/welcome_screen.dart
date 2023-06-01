import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animate_do/animate_do.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: size.width,
            height: size.height,
            child: Image.asset(
              'assets/images/splash.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: size.width,
              height: size.height * 0.3,
              child: Column(
                children: [
                  Text(
                    "Lets Start Journey, Enjoy",
                    style: GoogleFonts.lexend(
                      fontSize: size.width * 0.048,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.015,
                  ),
                  Text(
                    "Beautiful Movement of Life",
                    style: GoogleFonts.lexend(
                      fontSize: size.width * 0.05,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.048,
                  ),
                  InkWell(
                    // go to Home Page
                    onTap: () {},
                    child: Container(
                      width: size.width * 0.49,
                      height: size.height * 0.072,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Text(
                          "Start",
                          style: GoogleFonts.lexend(
                            fontSize: size.width * 0.045,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.025,
                  ),
                  Text(
                    "Don't have account?",
                    style: GoogleFonts.lexend(
                      fontSize: size.width * 0.028,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
