import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tecudia_tour_guide_app/Screens/details_screen.dart';
import 'package:tecudia_tour_guide_app/sizedbox_helper.dart';
import 'package:tecudia_tour_guide_app/widgets/option_widget.dart';
import 'package:tecudia_tour_guide_app/widgets/option_widget2.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 110,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  SizedBox(
                    height: 40,
                    child: Image.asset(
                      'assets/page1top1.jpg',
                      fit: BoxFit.fitHeight,
                      height: 60,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 1,
                    decoration:
                        BoxDecoration(color: Colors.white.withOpacity(0.94)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            SizedBoxHelper.sizedBox30,
                            Text(
                              'Where you ',
                              style: GoogleFonts.montserrat(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  textBaseline: TextBaseline.alphabetic),
                            ),
                            Text(
                              'wanna go?',
                              style: GoogleFonts.montserrat(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade300,
                                blurRadius: 30,
                                spreadRadius: 5,
                                offset: const Offset(10, 10),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset(
                              'assets/search_icon.png',
                              height: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 140,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  OptionWidget(),
                  OptionWidgetTwo(
                    text: 'Flight',
                    imagePath: 'assets/airplane.png',
                    height: 30,
                  ),
                  OptionWidgetTwo(
                    text: 'place',
                    imagePath: 'assets/locotion.png',
                    height: 20,
                  ),
                  OptionWidgetTwo(
                    text: 'Food',
                    imagePath: 'assets/food.png',
                    height: 30,
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                // gradient: LinearGradient(begin: Alignment.topLeft, colors: [
                //   Colors.blue.shade50,
                //   Colors.white54,
                //   Colors.white54,
                //   Colors.white,
                //   Colors.white,
                //   Colors.white,
                //   Colors.white,
                // ]),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Hotels',
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.black),
                  ),
                  Text(
                    'See all',
                    style: GoogleFonts.montserrat(
                      color: Colors.orangeAccent,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 240,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      right: 18,
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => const DetailsScreen(),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black54,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        // height: ,
                        width: 155,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Stack(
                            children: [
                              Image.asset(
                                'assets/popular_hotel1.jpg',
                                fit: BoxFit.fitHeight,
                              ),
                              Positioned(
                                bottom: 0,
                                child: Container(
                                  decoration: const BoxDecoration(
                                      gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                        Color.fromRGBO(39, 40, 34, 0.1),
                                        Color.fromRGBO(39, 40, 34, 0.4),
                                        Color.fromRGBO(39, 40, 34, 0.5),
                                        Color.fromRGBO(39, 40, 34, 0.6),
                                        Color.fromRGBO(39, 40, 34, 0.7),
                                        Colors.black,
                                        Colors.black87,
                                      ])),
                                  height: 100,
                                  width: 155,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15.0, right: 15),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 13,
                                        ),
                                        Text(
                                          'Santorini',
                                          style: GoogleFonts.montserrat(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          // crossAxisAlignment:
                                          //     CrossAxisAlignment.center,
                                          children: [
                                            const Icon(
                                              Icons.location_on_outlined,
                                              color: Colors.white,
                                              weight: 10,
                                            ),
                                            Text(
                                              'Greece',
                                              style: GoogleFonts.montserrat(
                                                  fontWeight: FontWeight.w300,
                                                  color: Colors.white,
                                                  fontSize: 13),
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            RichText(
                                                text: TextSpan(children: <
                                                    TextSpan>[
                                              const TextSpan(
                                                text: '\$488/',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              TextSpan(
                                                text: 'night',
                                                style: GoogleFonts.montserrat(),
                                              ),
                                            ])),
                                            Row(
                                              children: [
                                                const Icon(
                                                  Icons.star,
                                                  color: Colors.orangeAccent,
                                                  size: 17,
                                                ),
                                                const Text(
                                                  '4.9',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12),
                                                )
                                              ],
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      right: 18,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      width: 155,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            Image.asset(
                              'assets/popular_hotel2.png',
                              fit: BoxFit.fitWidth,
                            ),
                            Positioned(
                              bottom: 0,
                              child: Container(
                                decoration: const BoxDecoration(
                                    gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                      Color.fromRGBO(39, 40, 34, 0.1),
                                      Color.fromRGBO(39, 40, 34, 0.4),
                                      Color.fromRGBO(39, 40, 34, 0.5),
                                      Color.fromRGBO(39, 40, 34, 0.6),
                                      Color.fromRGBO(39, 40, 34, 0.7),
                                      Colors.black,
                                      Colors.black87,
                                    ])),
                                height: 100,
                                width: 155,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15.0, right: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        height: 13,
                                      ),
                                      Text(
                                        'Hotel Royal',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        // crossAxisAlignment:
                                        //     CrossAxisAlignment.center,
                                        children: [
                                          const Icon(
                                            Icons.location_on_outlined,
                                            color: Colors.white,
                                            weight: 10,
                                          ),
                                          Text(
                                            'Spain',
                                            style: GoogleFonts.montserrat(
                                                fontWeight: FontWeight.w300,
                                                color: Colors.white,
                                                fontSize: 13),
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          RichText(
                                              text:
                                                  TextSpan(children: <TextSpan>[
                                            const TextSpan(
                                              text: '\$280/',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            TextSpan(
                                              text: 'night',
                                              style: GoogleFonts.montserrat(),
                                            ),
                                          ])),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.star,
                                                color: Colors.orangeAccent,
                                                size: 17,
                                              ),
                                              Text(
                                                '4.8',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 12),
                                              )
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      right: 18,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      // height: ,
                      width: 150,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Stack(
                          children: [
                            Image.asset(
                              'assets/popular_hotel2.png',
                              fit: BoxFit.fitWidth,
                            ),
                            Positioned(
                              bottom: 0,
                              child: Container(
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color.fromRGBO(39, 40, 34, 0.1),
                                      Color.fromRGBO(39, 40, 34, 0.3),
                                      Color.fromRGBO(39, 40, 34, 0.3),
                                      Color.fromRGBO(39, 40, 34, 0.3),
                                      Color.fromRGBO(39, 40, 34, 0.3),
                                      Colors.black,
                                      Colors.black87,
                                    ],
                                  ),
                                ),
                                height: 40,
                                width: 400,
                                child: const Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Text(
                                      '',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.italic,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      right: 20,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20)),
                      height: 100,
                      width: 75,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Hot Deals',
              style: GoogleFonts.montserrat(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 190,
              width: MediaQuery.of(context).size.width,
              // width: MediaQuery,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  20,
                ),
                color: Colors.blue,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/hotdeals.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
