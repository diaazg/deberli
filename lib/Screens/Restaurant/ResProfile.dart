import 'package:flutter/material.dart';
import '../kConstants.dart';
import 'package:google_fonts/google_fonts.dart';


class ResProfile extends StatelessWidget {
  const ResProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return SafeArea(child: Scaffold(
      backgroundColor: kConstants().primaryColor,
      body:Stack(
        children: [
          Positioned(
            bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 80),
                height: size.height*0.8,
            width: size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(25))
            ),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Text("Diaa zellagui",style: GoogleFonts.montserrat(fontSize: 25,),),
                        Text("+21354990141",style: GoogleFonts.montserrat(fontSize: 15,color: Colors.black54,letterSpacing: 2)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.star_rounded,color: Color(0xFFEE765E),),
                            Icon(Icons.star_rounded,color: Color(0xFFEE765E),),
                            Icon(Icons.star_rounded,color: Color(0xFFEE765E),),
                            Icon(Icons.star_rounded,color: Color(0xAAEE765E),),
                            Icon(Icons.star_rounded,color: Color(0xAAEE765E),),
                          ],
                        )

                      ],
                    ),
                    SizedBox(height: 10,),
                    Divider(
                      height: 10,
                      color: Colors.black26,
                      thickness: 1,
                      indent : 0,
                      endIndent : 0,
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        SizedBox(width: 10,),
                        Text("Parametres du Compte :",style: GoogleFonts.montserrat(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    SizedBox(height: 40,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.person_2_outlined,color: kConstants().primaryColor,size: 30,),
                                  SizedBox(width: 10,),
                                  Text("Informations Du profile",style: GoogleFonts.montserrat(fontSize: 20,color: Colors.black),)
                                ],
                              ),
                              Icon(Icons.navigate_next,color: Colors.black54,)
                            ],
                          ),
                          Divider(
                            height: 10,
                            color: Colors.black26,
                            thickness: 1,
                            indent : 40,
                            endIndent : 0,
                          ),

                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.folder_copy_outlined,color: kConstants().primaryColor,size: 30,),
                                  SizedBox(width: 10,),
                                  Text("Les Dernieres Transactions ",style: GoogleFonts.montserrat(fontSize: 20,color: Colors.black),)
                                ],
                              ),
                              Icon(Icons.navigate_next,color: Colors.black54,)
                            ],
                          ),
                          Divider(
                            height: 10,
                            color: Colors.black26,
                            thickness: 1,
                            indent : 40,
                            endIndent : 0,
                          ),

                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.local_police_outlined,color: kConstants().primaryColor,size: 30,),
                                  SizedBox(width: 10,),
                                  Text("Privacy Policy",style: GoogleFonts.montserrat(fontSize: 20,color: Colors.black),)
                                ],
                              ),
                              Icon(Icons.navigate_next,color: Colors.black54,)
                            ],
                          ),
                          Divider(
                            height: 10,
                            color: Colors.black26,
                            thickness: 1,
                            indent : 40,
                            endIndent : 0,
                          ),

                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.fact_check_outlined,color: kConstants().primaryColor,size: 30,),
                                  SizedBox(width: 10,),
                                  Text("Terms of use",style: GoogleFonts.montserrat(fontSize: 20,color: Colors.black),)
                                ],
                              ),
                              Icon(Icons.navigate_next,color: Colors.black54,)
                            ],
                          ),
                          Divider(
                            height: 10,
                            color: Colors.black26,
                            thickness: 1,
                            indent : 40,
                            endIndent : 0,
                          ),

                        ],
                      ),
                    ),
                    SizedBox(height: 60,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.logout,color: Color(0xFFEE765E),),
                        Text("Log out",style: GoogleFonts.montserrat(color:Color(0xFFEE765E),fontSize: 20 ),)
                      ],
                    )

                  ],
                ),
          )),
          Positioned(
            top: 100,
              left: size.width*0.35,
              right: size.width*0.35,
              child: ElevatedButton(
                onPressed: () {

                },
                child: Center(
                  child: Text(
                    "Diaa",
                    style: GoogleFonts.montserrat(fontSize: 15,color: kConstants().primaryColor),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    maximumSize: Size(110, 110),
                    minimumSize: Size(110, 110),
                    primary: Colors.white,
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100))),
              )),
        ],
      )
    ));
  }
}
