import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlaceScreen extends StatelessWidget {
  const PlaceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: size.width,
          height: size.height,
          child: Column(
            children: [
              Container(
                height: size.height * 0.5,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  ),
                  image: DecorationImage(
                      image: AssetImage('assets/images/bg.jpg'),
                      fit: BoxFit.cover),
                ),
                child: Stack(
                  children: [
                    Container(
                      height: size.height,
                      width: size.width,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.15),
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: SizedBox(
                        height: size.height * 0.1,
                        width: size.width * 0.9,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                height: size.height * 0.05,
                                width: size.width * 0.09,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.arrow_back_ios_new,
                                    color: Colors.blue,
                                    size: size.width * 0.05,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: size.height * 0.05,
                              width: size.width * 0.09,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.search,
                                  color: Colors.blue,
                                  size: size.width * 0.05,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        height: size.height * 0.25,
                        width: size.width * 0.9,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "The Montcalm At",
                              style: GoogleFonts.lexend(
                                fontSize: size.width * 0.06,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "Brwery London City",
                              style: GoogleFonts.lexend(
                                fontSize: size.width * 0.06,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: size.height * 0.015),
                            Row(
                              children: [
                                SizedBox(height: size.height * 0.03),
                                const Icon(
                                  Icons.location_on,
                                  color: Colors.blue,
                                ),
                                Text(
                                  'London',
                                  style: GoogleFonts.lexend(
                                      color: Colors.white, fontSize: 15),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(size.width * 0.06),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Icon(
                          Icons.bookmark_outline,
                          color: Colors.white,
                          size: size.width * 0.08,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Expanded(
                child: SizedBox(
                  width: size.width * 0.9,
                  child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                    style: GoogleFonts.lexend(
                        fontSize: size.width * 0.035,
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: size.width * 0.025),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/clock.png',
                      height: size.height * 0.035,
                    ),
                    SizedBox(
                      width: size.width * 0.02,
                    ),
                    Text(
                      '8 AM - 9 PM',
                      style: GoogleFonts.lexend(
                        fontSize: size.width * 0.03,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Padding(
                padding: EdgeInsets.only(left: size.width * 0.025),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/calendar.png',
                      height: size.height * 0.035,
                    ),
                    SizedBox(
                      width: size.width * 0.02,
                    ),
                    Text(
                      'Friday - Tuesday',
                      style: GoogleFonts.lexend(
                        fontSize: size.width * 0.03,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Padding(
                padding: EdgeInsets.only(left: size.width * 0.025),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/flight (1).png',
                      height: size.height * 0.035,
                    ),
                    SizedBox(
                      width: size.width * 0.02,
                    ),
                    Text(
                      'Ticket 2 way',
                      style: GoogleFonts.lexend(
                        fontSize: size.width * 0.03,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              SizedBox(
                height: size.height * 0.15,
                width: size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: size.height * 0.09,
                      width: size.width * 0.4,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          '\$950.0',
                          style: GoogleFonts.lexend(
                              fontSize: size.width * 0.05,
                              fontWeight: FontWeight.w700,
                              color: Colors.blue),
                        ),
                      ),
                    ),
                    Container(
                      height: size.height * 0.09,
                      width: size.width * 0.4,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        border: Border.all(color: Colors.white, width: 2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Book',
                            style: GoogleFonts.lexend(
                                fontSize: size.width * 0.05,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                          Image.asset(
                            'assets/images/send.png',
                            height: size.height * 0.03,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
