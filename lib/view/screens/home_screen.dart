import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel/utils/constants.dart';
import 'package:travel/view/screens/place_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
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
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                SizedBox(
                  width: size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'All',
                        style: GoogleFonts.lexend(
                            fontSize: size.width * 0.04,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54),
                      ),
                      Text(
                        'New',
                        style: GoogleFonts.lexend(
                            fontSize: size.width * 0.04,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54),
                      ),
                      Text(
                        'Tours',
                        style: GoogleFonts.lexend(
                            fontSize: size.width * 0.04,
                            fontWeight: FontWeight.w500,
                            color: Colors.blue),
                      ),
                      Text(
                        'Asia',
                        style: GoogleFonts.lexend(
                            fontSize: size.width * 0.04,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54),
                      ),
                      Text(
                        'Adventure',
                        style: GoogleFonts.lexend(
                            fontSize: size.width * 0.04,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: size.height * 0.03),
                SizedBox(
                  width: size.width,
                  height: size.height * 0.4,
                  child: ListView.builder(
                    itemCount: 4,
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: size.width * 0.05,
                            vertical: size.height * 0.01),
                        child: Container(
                          width: size.width * 0.5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(blurRadius: 3, offset: Offset(0, 4))
                            ],
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/aeroplane.jpg'),
                            ),
                          ),
                          child: Stack(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const PlaceScreen(),
                                    ),
                                  );
                                },
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: SizedBox(
                                    height: size.height * 0.15,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          'Hilton Taran',
                                          style: GoogleFonts.lexend(
                                              color: Colors.white,
                                              fontSize: size.width * 0.042,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          'London',
                                          style: GoogleFonts.lexend(
                                              color: Colors.white,
                                              fontSize: size.width * 0.042,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        RatingBar.builder(
                                          initialRating: 4,
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 5,
                                          itemSize: 24,
                                          unratedColor: Colors.white,
                                          itemPadding:
                                              const EdgeInsets.symmetric(
                                                  horizontal: 4.0),
                                          onRatingUpdate: (rating) {
                                            print(rating);
                                          },
                                          itemBuilder:
                                              (BuildContext context, _) {
                                            return const Icon(Icons.star,
                                                color: Colors.amber);
                                          },
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            elevation: 0,
            onTap: (value) {},
            iconSize: 30,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            showSelectedLabels: false,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
            ]),
      ),
    );
  }
}
