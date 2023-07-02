import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tecudia_tour_guide_app/sizedbox_helper.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              alignment: AlignmentDirectional.topCenter,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.black,
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.asset(
                        'assets/p2top.png',
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        bottom: 50,
                        left: MediaQuery.of(context).size.width * 0.4,
                        child: Container(
                          height: 30,
                          width: 70,
                          decoration: BoxDecoration(
                              color: Colors.black54,
                              borderRadius: BorderRadius.circular(40)),
                          child: Center(
                            child: Text(
                              '124 photos',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 11),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: -4,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.801,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 10, bottom: 20, right: 20, left: 20),
                      child: ListView(
                        children: [
                          const Text(
                            'BaLi Motel',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontFamily: 'AtypDisplay'),
                          ),
                          const Text(
                            'Vung Tau',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontFamily: 'AtypDisplay',
                            ),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.location_on_outlined,
                                size: 20,
                                color: Colors.black87,
                              ),
                              Text(
                                'Indonesia',
                                style: TextStyle(fontSize: 13),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent,
                                  ),
                                  RichText(
                                      text: TextSpan(children: const <TextSpan>[
                                    TextSpan(
                                        text: '4.9 ',
                                        style: TextStyle(color: Colors.black)),
                                    TextSpan(
                                        text: '(6.8K review)',
                                        style: TextStyle(
                                          color: Colors.grey,
                                        )),
                                  ])),
                                ],
                              ),
                              RichText(
                                  text: TextSpan(children: <TextSpan>[
                                const TextSpan(
                                    text: '\$580/',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30)),
                                TextSpan(
                                    text: 'night',
                                    style: GoogleFonts.montserrat(
                                      color: Colors.black,
                                    )),
                              ])),
                            ],
                          ),
                          SizedBoxHelper.sizedBox10,
                          const Divider(
                            height: 1,
                          ),
                          SizedBoxHelper.sizedBox20,
                          RichText(
                              text: TextSpan(children: <TextSpan>[
                            const TextSpan(
                                text:
                                    'Set in Vung Tau, 100 metres from Front Beach, BaLi Motel Vung Tau offers accommodation with a garden, private parking and a shared... ',
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 15)),
                            TextSpan(
                                text: 'Read more',
                                style: GoogleFonts.montserrat(
                                  color: Colors.orange,
                                  fontWeight: FontWeight.w500,
                                )),
                          ])),
                          SizedBoxHelper.sizedBox30,
                          Text(
                            'What we offer',
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.bold, fontSize: 23),
                          ),
                          SizedBoxHelper.sizedBox10,
                          SizedBox(
                            height: 120,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 18.0, top: 5, bottom: 30),
                                  child: Container(
                                    height: 100,
                                    width: 70,
                                    decoration: BoxDecoration(
                                      // color: Colors.blue,
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          color: Colors.grey.shade400,
                                          width: 0.5),
                                    ),
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              'assets/bed.png',
                                              height: 25,
                                            ),
                                            SizedBoxHelper.sizedBox10,
                                            const Text(
                                              '2 Bed',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 10),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 18.0, top: 5, bottom: 30),
                                  child: Container(
                                    width: 70,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.shade300,
                                          blurRadius: 40,
                                          spreadRadius: 0,
                                          offset: const Offset(8, 20),
                                        ),
                                      ],
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          color: Colors.grey.shade300,
                                          width: 0.5),
                                    ),
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              'assets/waiter.png',
                                              height: 25,
                                            ),
                                            SizedBoxHelper.sizedBox10,
                                            Text(
                                              'Dinner',
                                              style: GoogleFonts.montserrat(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 18.0, top: 5, bottom: 30),
                                  child: Container(
                                    height: 70,
                                    width: 70,
                                    decoration: BoxDecoration(
                                      // color: Colors.blue,
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          color: Colors.grey.shade400,
                                          width: 0.5),
                                    ),
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              'assets/bathtub.png',
                                              height: 20,
                                            ),
                                            SizedBoxHelper.sizedBox10,
                                            const Text(
                                              'Hot Tub',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 18.0, top: 5, bottom: 30),
                                  child: Container(
                                    width: 70,
                                    decoration: BoxDecoration(
                                      // color: Colors.blue,
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          color: Colors.grey.shade400,
                                          width: 0.5),
                                    ),
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              'assets/onlyac.png',
                                              height: 20,
                                            ),
                                            SizedBoxHelper.sizedBox10,
                                            Text(
                                              '1 Ac',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 20.0, top: 5, bottom: 30),
                                  child: Container(
                                    width: 70,
                                    decoration: BoxDecoration(
                                      // color: Colors.blue,
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          color: Colors.grey, width: 0.5),
                                    ),
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Column(
                                          children: const [
                                            Icon(
                                              Icons.bed,
                                              color: Colors.grey,
                                            ),
                                            Text('2 Bed')
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // SizedBoxHelper.sizedBox10,
                          Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                  Colors.grey.shade50,
                                  Colors.grey.shade50,
                                  Colors.grey.shade100,
                                  Colors.white,
                                  Colors.white,
                                  Colors.white,
                                ])),
                            width: 100,
                            child: Text(
                              'Hosted by',
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.bold, fontSize: 23),
                            ),
                          ),
                          SizedBoxHelper.sizedBox10,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/lady.png',
                                    height: 50,
                                    width: 50,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('Harleen Smith'),
                                        Row(
                                          children: [
                                            ShaderMask(
                                              shaderCallback: (Rect bounds) {
                                                return LinearGradient(
                                                  begin: Alignment.topLeft,
                                                  end: Alignment.bottomRight,
                                                  colors: [
                                                    Colors.orange[200]!,
                                                    Colors.orange
                                                  ],
                                                ).createShader(bounds);
                                              },
                                              child: Icon(
                                                Icons.star,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Text('4.9'),
                                            Text('(1.4K review)'),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Colors.orange[200]!,
                                          Colors.orange,
                                        ]),
                                    color: Colors.orangeAccent,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  padding: const EdgeInsets.all(10),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(
                                        'assets/chat.png',
                                        height: 30,
                                        width: 40,
                                      )))
                            ],
                          ),
                          SizedBoxHelper.sizedBox10,
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: Stack(
                              children: [
                                SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  child: Image.asset(
                                    'assets/page2bottom.jpeg',
                                    height: 100,
                                    fit: BoxFit.fill,
                                    color: Colors.white60,
                                    colorBlendMode: BlendMode.lighten,
                                    // opacity: Animation(),
                                  ),
                                ),
                                Container(
                                  color: Colors.white.withOpacity(0.98),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                    height: 65,
                                    child: ListView(
                                      children: [
                                        MaterialButton(
                                          height: 65,
                                          color: const Color.fromRGBO(
                                              98, 166, 247, 8),
                                          onPressed: () {},
                                          child: const Text(
                                            'Book Now',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
