import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class destinatioo extends StatelessWidget {
  const destinatioo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
          body: Container(
            width: size.width,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Color(0xFFEE765F), Color(0xFFFFD4CC)])),
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Center(
                      child: Text(
                        "E",
                        style: GoogleFonts.montserrat(
                            fontSize: 35,
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        elevation: 10,
                        maximumSize: Size(110, 110),
                        minimumSize: Size(110, 110),
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100))),
                  ),
                  Column(
                    children: [
                      Text(
                        "Diaa zellagui",
                        style: GoogleFonts.montserrat(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Text("+21354990141",
                          style: GoogleFonts.montserrat(
                              fontSize: 15,
                              color: Colors.black54,
                              letterSpacing: 2)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star_rounded,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.star_rounded,
                            color: Colors.white24,
                          ),
                          Icon(
                            Icons.star_rounded,
                            color: Colors.white24,
                          ),
                          Icon(
                            Icons.star_rounded,
                            color: Colors.white24,
                          ),
                          Icon(
                            Icons.star_rounded,
                            color: Colors.white24,
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Commande a recuperer: 2 sac of food scarps",
                    style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height:50,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        width: size.width * 0.35,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.done,
                              color: Colors.green,
                            ),
                            Text("Refuser",
                                style: GoogleFonts.montserrat(
                                    fontSize: 25,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        width: size.width * 0.35,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.close,
                              color: Colors.deepOrangeAccent,
                            ),
                            Text("Accepter",
                                style: GoogleFonts.montserrat(
                                    fontSize: 25,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 100,
                  ),

                ],
              ),
            ),
          ),
        ));
  }
}
