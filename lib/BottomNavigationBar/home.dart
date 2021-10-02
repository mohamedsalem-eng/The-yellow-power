import 'package:auto_size_text/auto_size_text.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_yellow_power/Constants/constants.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.2,
                        child: Image.asset(
                          'images/home.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, right: 15, top: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AutoSizeText.rich(
                              TextSpan(
                                  text: "Mohamed Salem Home\n",
                                  style: GoogleFonts.poppins(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                  children: [
                                    TextSpan(
                                      text: 'Sunny 28 C  Sunday, 19/09/ 2021',
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ]),
                              textAlign: TextAlign.left,
                            ),
                            Container(
                              width: 100,
                              height: 40,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Icon(
                                      Icons.mic,
                                      size: 40,
                                    ),
                                  ),
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: MainColor,
                                    ),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width * 0.85,
                          height: 150,
                          child: SvgPicture.asset(
                            'images/powerusage.svg',
                            fit: BoxFit.fill,
                          )),
                      Positioned(
                          left: 45,
                          top: 55,
                          child: Text(
                            '1.2 kWh',
                            style: GoogleFonts.poppins(
                                fontSize: 22, fontWeight: FontWeight.w600),
                          )),
                      Positioned(
                          left: 45,
                          top: 85,
                          child: Text(
                            'Power generated today',
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey),
                          )),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20.0, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Sun power today',
                          style:
                              GoogleFonts.poppins(fontWeight: FontWeight.w500),
                        ),
                        Row(
                          children: [
                            Container(
                              height: 6,
                              width: 150,
                              color: MainColor,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Text(
                                '6.46 kW',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey,
                                    fontSize: 12),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 15.0, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Panel generated power',
                          style:
                              GoogleFonts.poppins(fontWeight: FontWeight.w500),
                        ),
                        Row(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height: 6,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      color: Colors.white12,
                                      border: Border.all(
                                          color: Colors.grey, width: 0.5)),
                                ),
                                Container(
                                  height: 6,
                                  width: 40,
                                  color: MainColor,
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Text(
                                ' 1.20 kW',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey,
                                    fontSize: 12),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20.0, right: 20, top: 20),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey, width: 1)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0,right: 10),
                                child: Icon(
                                  Icons.location_on_rounded,
                                  color: MainColor,
                                ),
                              ),
                              Text('Add Location',style: GoogleFonts.poppins(fontSize: 12),)
                            ],
                          ),
                          InkWell(
                            onTap: (){
                              print('Your location is inside my heart');
                            },
                            child: Container(height: 50, width: 100,
                                decoration: BoxDecoration(
                                    color: MainColor,
                                  borderRadius: BorderRadius.circular(10)
                                ),
                              child: Center(child: Text('Add',style: GoogleFonts.poppins(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w600),)),
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0,bottom: 10,left: 20),
                    child: Row(
                      children: [
                        Text('This week’s generated power graph',style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0,bottom: 5),
                    child: Row(
                      children: [
                        Text('Generated Power(Wh)',style: GoogleFonts.poppins(fontSize: 10),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0,right: 20),
                    child: Container(
                      height: 255,
                      child: Row(
                        children: [
                          Container(width: 35,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text('1400',style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500),),
                              Text('1300',style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500),),
                              Text('1200',style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500),),
                              Text('1100',style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500),),
                              Text('1000',style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500),),
                              Text('900',style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500),),
                              Text('800',style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500),),
                              Text('700',style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500),),
                              Text('600',style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500),),
                              Text('500',style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500),),
                              Text('400',style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500),),
                              Text('300',style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500),),
                              Text('200',style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500),),
                              Text('100',style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500),),

                            ],
                          ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Container(width: 6,color: MainColor,),
                          ),
                          Expanded(
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        height: 150,
                                        width: 12,
                                        color: MainColor,
                                      ),
                                      Container(
                                        height: 100,
                                        width: 12,
                                        color: MainColor,
                                      ),
                                      Container(
                                        height: 200,
                                        width: 12,
                                        color: MainColor,
                                      ),
                                      Container(
                                        height: 80,
                                        width: 12,
                                        color: MainColor,
                                      ),
                                      Container(
                                        height: 180,
                                        width:12,
                                        color: MainColor,
                                      ),
                                      Container(
                                        height: 130,
                                        width:12,
                                        color: MainColor,
                                      ),
                                      Container(
                                        height: 230,
                                        width: 12,
                                        color: MainColor,
                                      ),

                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        width: 320,
                                        height: 6,
                                        color: MainColor,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 98.0),
                    child: Row(
                      children: [
                        Container(
                          width: 280,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RotatedBox(
                                    quarterTurns: -1,
                                    child: Text('Sat',style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500),)),
                                RotatedBox(
                                    quarterTurns: -1,
                                    child: Text('Sun',style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500),)),
                                RotatedBox(
                                    quarterTurns: -1,
                                    child: Text('Mon',style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500),)),
                                RotatedBox(
                                    quarterTurns: -1,
                                    child: Text('Tue',style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500),)),
                                RotatedBox(
                                    quarterTurns: -1,
                                    child: Text('Wed',style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500),)),
                                RotatedBox(
                                    quarterTurns: -1,
                                    child: Text('Thu',style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500),)),
                                RotatedBox(
                                    quarterTurns: -1,
                                    child: Text('Fri',style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500),)),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0,bottom: 8),
                          child: Text('Time',style: GoogleFonts.poppins(fontSize: 10),),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.only(left: 20.0, right: 20, top: 20),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey, width: 1)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [

                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text('Total power generated this week',style: GoogleFonts.poppins(fontSize: 12),),
                              )
                            ],
                          ),
                          InkWell(
                            onTap: (){
                              print('Your location is inside my heart');
                            },
                            child: Container(height: 50, width: 100,
                              decoration: BoxDecoration(
                                  color: MainColor,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Center(child: Text('20kWh',style: GoogleFonts.poppins(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w600),)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
