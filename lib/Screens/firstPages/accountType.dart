import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swo/Screens/Restaurant/RestaurantHome.dart';
import 'package:swo/Screens/farmer/Home.dart';
import 'package:swo/Screens/kConstants.dart';
import 'package:swo/Screens/firstPages/pleaseWait.dart';

class accountType extends StatelessWidget {
  const accountType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: Column(
          children: [
            Text("Choisissez le type d'utilisateur que vous êtes",style: GoogleFonts.montserrat(color: Colors.black,fontSize: 25),textAlign: TextAlign.center,),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: ElevatedButton(
                    onPressed: () async {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>PleaseWait())).then((value) => Navigator.push(context, MaterialPageRoute(builder: (context)=>ResHome())));
                      

                    },
                    child: Center(
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "VENDEUR",
                            style: GoogleFonts.montserrat(fontSize: 40),
                          ),
                          Text(
                            "la vente des déchets alimentaires",
                            style: GoogleFonts.montserrat(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(size.width * 0.8, size.height * 0.2),
                        primary: kConstants().primaryColor,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>PleaseWait())).then((value) => Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeFarmer())));
                    },
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "ACHETEUR",
                            style: GoogleFonts.montserrat(fontSize: 40),
                          ),
                          Text(
                            "Cherche à acheter les déchets alimentaires",
                            style: GoogleFonts.montserrat(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(size.width * 0.8, size.height * 0.2),
                        primary: kConstants().primaryColor,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>PleaseWait()));
                    },
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "LIVREUR",
                            style: GoogleFonts.montserrat(fontSize: 40),
                          ),
                          Text(
                            "Transporter et de livrer des déchets alimentaires",
                            style: GoogleFonts.montserrat(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(size.width * 0.8, size.height * 0.2),
                        primary: kConstants().primaryColor,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    ));
  }
}
