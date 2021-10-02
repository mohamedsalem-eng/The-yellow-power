import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_yellow_power/Authentication/login_screen.dart';
import 'package:the_yellow_power/Constants/constants.dart';


class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: MainColor,
        child: SingleChildScrollView(
          child: SafeArea(
            top: false,
            bottom: false,
            child: Stack(
              children: [
                Column(
                  children: [
                    Stack(children: [
                      Container(
                        height: 300,
                        color: MainColor,
                      ),
                      Positioned(
                          right: 0,
                          top: 0,
                          child: Icon(Icons.wb_sunny,color: Colors.white12,size: 250,)),
                      Positioned(
                        bottom: 50,
                        left: 30,
                        child: AutoSizeText.rich(
                          TextSpan(
                              text: "  The yellow power\n",
                              style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                              children: [
                                TextSpan(
                                  text: "Welcome Home\n",
                                  style: GoogleFonts.poppins(
                                      fontSize: 27,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                                TextSpan(
                                  text: 'continue to Sign in',
                                  style: GoogleFonts.poppins(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              ]),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Positioned(
                          left: 50,
                          bottom: 145,
                          child: Container(
                              height: 65,
                              width: 65,
                              child: Image.asset('images/yellowlogo.png'))),
                    ]),
                    Container(
                      color: Colors.white,
                      height: 550,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 480.0),
                        child: AutoSizeText.rich(
                          TextSpan(
                              text: "By creating an account, you agree our\n",
                              style: GoogleFonts.poppins(
                                  fontSize: 12, color: Colors.black),
                              children: [
                                TextSpan(
                                  text: 'Terms of Service',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                TextSpan(
                                  text: ' and',
                                  style: GoogleFonts.poppins(),
                                ),
                                TextSpan(
                                  text: ' Privacy and Policy',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ]),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 260.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 2,
                              offset:
                                  Offset(0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                        height: 500,
                        width: 320,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 25.0, right: 25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 15,
                              ),
                              AutoSizeText.rich(
                                TextSpan(
                                    text: "Sign UP\n",
                                    style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                    children: [
                                      TextSpan(
                                        text:
                                            'Enter your credentials to continue',
                                        style: GoogleFonts.poppins(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black26),
                                      ),
                                    ]),
                                textAlign: TextAlign.left,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: 45,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Colors.grey.shade300, width: 1.5),
                                      top: BorderSide(
                                          color: Colors.grey.shade300, width: 1.5),
                                      right: BorderSide(
                                          color: Colors.grey.shade300, width: 1.5),
                                      left: BorderSide(
                                          color: Colors.grey.shade300, width: 1.5)),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 10.0),
                                      child: Image.asset(
                                       ('images/nameicon.png'),height: 19,width: 19,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10.0,
                                          top: 5,
                                          bottom: 5,
                                          right: 10),
                                      child: VerticalDivider(
                                        width: 2,
                                        thickness: 2,
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 5.0),
                                          child: Text(
                                            'Name',
                                            style: GoogleFonts.poppins(
                                                fontSize: 10,
                                                color: Colors.grey),
                                          ),
                                        ),
                                        Container(
                                          height: 22,
                                          width: 180,
                                          child: TextField(
                                            cursorColor: MainColor,
                                            scrollController: ScrollController(
                                                keepScrollOffset: true),
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              isCollapsed: false,
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: 45,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Colors.grey.shade300, width: 1.5),
                                      top: BorderSide(
                                          color: Colors.grey.shade300, width: 1.5),
                                      right: BorderSide(
                                          color: Colors.grey.shade300, width: 1.5),
                                      left: BorderSide(
                                          color: Colors.grey.shade300, width: 1.5)),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 10.0),
                                      child: Image(
                                        image: AssetImage('images/email.png'),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10.0,
                                          top: 5,
                                          bottom: 5,
                                          right: 10),
                                      child: VerticalDivider(
                                        width: 2,
                                        thickness: 2,
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 5.0),
                                          child: Text(
                                            'Email',
                                            style: GoogleFonts.poppins(
                                                fontSize: 10,
                                                color: Colors.grey),
                                          ),
                                        ),
                                        Container(
                                          height: 22,
                                          width: 180,
                                          child: TextField(
                                            cursorColor: MainColor,
                                            scrollController: ScrollController(
                                                keepScrollOffset: true),
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              isCollapsed: false,
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: 45,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Colors.grey.shade300, width: 1.5),
                                      top: BorderSide(
                                          color: Colors.grey.shade300, width: 1.5),
                                      right: BorderSide(
                                          color: Colors.grey.shade300, width: 1.5),
                                      left: BorderSide(
                                          color: Colors.grey.shade300, width: 1.5)),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 10.0),
                                      child: Image(
                                        image:
                                            AssetImage('images/password.png'),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10.0,
                                          top: 5,
                                          bottom: 5,
                                          right: 10),
                                      child: VerticalDivider(
                                        width: 2,
                                        thickness: 2,
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 5.0),
                                          child: Text(
                                            'Password',
                                            style: GoogleFonts.poppins(
                                                fontSize: 10,
                                                color: Colors.grey),
                                          ),
                                        ),
                                        Container(
                                          height: 20,
                                          width: 180,
                                          child: TextField(
                                            obscureText: true,
                                            cursorColor: MainColor,
                                            autocorrect: true,
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: 45,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Colors.grey.shade300, width: 1.5),
                                      top: BorderSide(
                                          color: Colors.grey.shade300, width: 1.5),
                                      right: BorderSide(
                                          color: Colors.grey.shade300, width: 1.5),
                                      left: BorderSide(
                                          color: Colors.grey.shade300, width: 1.5)),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding:
                                      const EdgeInsets.only(left: 10.0),
                                      child: Image(
                                        image:
                                        AssetImage('images/password.png'),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10.0,
                                          top: 5,
                                          bottom: 5,
                                          right: 10),
                                      child: VerticalDivider(
                                        width: 2,
                                        thickness: 2,
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                          const EdgeInsets.only(top: 5.0),
                                          child: Text(
                                            'Pin Code',
                                            style: GoogleFonts.poppins(
                                                fontSize: 10,
                                                color: Colors.grey),
                                          ),
                                        ),
                                        Container(
                                          height: 20,
                                          width: 180,
                                          child: TextField(
                                            obscureText: true,
                                            cursorColor: MainColor,
                                            autocorrect: true,
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),

                              SizedBox(
                                height: 20,
                              ),
                              Center(
                                child: InkWell(
                                  onTap: () {},
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Container(
                                      height: 45,
                                      width: 200,
                                      color: MainColor,
                                      child: Center(
                                        child: Text(
                                          'Sign Up',
                                          style: GoogleFonts.poppins(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 70.0, right: 70),
                                child: Divider(
                                  thickness: 2,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Already have an account?',
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.of(context)
                                            .pushReplacement(MaterialPageRoute(builder: (_) => LoginScreen()));
                                      },
                                      child: Text(
                                        'Log In',
                                        style: TextStyle(color: MainColor),
                                      ))
                                ],
                              )
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
    );
  }
}
