import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel/utils/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: size.width,
          height: size.height,
          padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.025,
            vertical: size.height * 0.025,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Explore",
                        style: GoogleFonts.lexend(
                            fontSize: size.width * 0.059,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                      Text(
                        "Explore Your World Beauty",
                        style: GoogleFonts.lexend(
                            fontSize: size.width * 0.037,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                  Container(
                    width: size.width * 0.1,
                    height: size.height * 0.05,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/images/girl.jpg',
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: size.height * 0.04),
              Container(
                width: size.width * 0.9,
                height: size.height * 0.073,
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: size.width * 0.032,
                    ),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search here...',
                        hintStyle: GoogleFonts.lexend(
                          color: Colors.black38,
                          fontSize: size.width * 0.04,
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          size: size.width * 0.07,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.035),
              SizedBox(
                height: size.height * 0.08,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: iconImages.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.03),
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                            height: size.height * 0.068,
                            width: size.width * 0.14,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.blue),
                            child: Center(
                              child: Image(
                                color: Colors.white,
                                height: size.height * 0.04,
                                image: AssetImage(
                                  iconImages[index],
                                ),
                              ),
                            )),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
