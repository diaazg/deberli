import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swo/Screens/kConstants.dart';

class PleaseWait extends StatelessWidget {
  const PleaseWait({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Image.asset("images/splashScreen/2.jpg"),
                Text(
                  "Veuillez patienter jusqu'à la confirmation de votre demande",
                  style:
                      GoogleFonts.montserrat(fontSize: 35, color: Colors.black),
                  textAlign: TextAlign.center,
                )
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              child: Center(
                child: Text(
                  "OK",
                  style: GoogleFonts.montserrat(fontSize: 30),
                ),
              ),
              style: ElevatedButton.styleFrom(
                maximumSize: Size(150, 80),
                  minimumSize: Size(150, 80),
                  primary: kConstants().primaryColor,
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
            ),
          ],
        ),
      ),
    ));
  }
}
