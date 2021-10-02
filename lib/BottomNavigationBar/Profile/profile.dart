import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_yellow_power/Constants/constants.dart';
class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [


          Container(
            child: Container(
              color: MainColor,
              height: MediaQuery.of(context).size.height/3,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  children: [ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                    child: Container(
                        height: 60,
                        width: 60,
                        child: Image.network('https://media-exp1.licdn.com/dms/image/C4D35AQEmVLf41cROSg/profile-framedphoto-shrink_400_400/0/1620093545925?e=1633262400&v=beta&t=19rC9AGLIg7dVbgJe4MHPDdaxkqkv-ZLIDLXpWKvokM',fit: BoxFit.fill,)),),
                    Padding(
                      padding: const EdgeInsets.only(left:10.0),
                      child: Container(
                        height: 50,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Mohamed Salem',style:GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 16
                            ),),
                            Text('M.salem_dev@hotmail.com',style:GoogleFonts.poppins(
                                color: Colors.white,
                              fontSize: 12
                            ),),

                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),

          ),
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.23,
                ),
                Container(
                    width: MediaQuery.of(context).size.width*0.85,
                    height: MediaQuery.of(context).size.height*0.6,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      boxShadow:  [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    child: LayoutBuilder(
                      builder: (context,constrains)=>Padding(
                        padding: const EdgeInsets.only(left: 8.0,right: 8),
                        child: Column(
                          children: [
                            Container(
                              height: constrains.maxHeight/6.1,
                              child: Center(
                                child: ListTile(
                                  onTap: (){

                                  },
                                  leading: Icon(Icons.settings,color: MainColor,size:30,),
                                  title: Text('Account Settings',style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500
                                  ),),
                                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                                ),
                              ),
                            ),
                            Divider(height:1,thickness: 1,),
                            Container(
                              height: constrains.maxHeight/6.1,
                              child: Center(
                                child: ListTile(
                                  onTap: (){

                                  },
                                  leading: Icon(CupertinoIcons.square_grid_2x2,color: MainColor,size:30),
                                  title: Text('App settings',style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500
                                  ),),
                                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                                ),
                              ),
                            ),
                            Divider(height:1,thickness: 1,),
                            Container(
                              height: constrains.maxHeight/6.1,
                              child: Center(
                                child: ListTile(
                                  onTap: (){

                                  },
                                  leading: Icon(Icons.announcement,color: MainColor,size:30),
                                  title: Text('Help & Feedback',style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500
                                  ),),
                                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                                ),
                              ),
                            ),
                            Divider(height:1,thickness: 1,),
                            Container(
                              height: constrains.maxHeight/6.1,
                              child: Center(
                                child: ListTile(
                                  leading: Icon(Icons.assignment_turned_in,color: MainColor,size:30),
                                  title: Text('Terms & Conditions',style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500
                                  ),),
                                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                                ),
                              ),
                            ),
                            Divider(height:1,thickness: 1,),
                            Container(
                              height: constrains.maxHeight/6.1,
                              child: Center(
                                child: ListTile(
                                  leading: Icon(Icons.star_half_sharp,color: MainColor,size:30),
                                  title: Text('Rate us',style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500
                                  ),),
                                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                                ),
                              ),
                            ),
                            Divider(height:1,thickness: 1,),
                            Container(
                              height: constrains.maxHeight/6.1,
                              child: Center(
                                child: ListTile(
                                  leading: Icon(Icons.subdirectory_arrow_left_rounded,color: MainColor,size:30),
                                  title: Text('Log out',style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500
                                  ),),
                                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                                ),
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
