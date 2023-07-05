import 'package:flutter/material.dart';
import 'package:swo/Screens/firstPages/interests.dart';
import 'package:swo/Screens/kConstants.dart';
import 'package:google_fonts/google_fonts.dart';

class interests extends StatefulWidget {
  const interests({Key? key}) : super(key: key);

  @override
  State<interests> createState() => _interestsState();
}

class _interestsState extends State<interests> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            Text(
              "Sélectionnez les centres d'intérêt:",
              style: GoogleFonts.montserrat(color: Colors.black, fontSize: 25),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20,),
            Container(
                height: size.height * 0.8,
                width: size.width,
                child: GridView.count(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  crossAxisCount: 3,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 10.0,
                  children: List.generate(5, (index) {
                    return ElevatedButton(
                        onPressed: () {},
                        child: Center(
                          child: Text(
                            "",
                            style: GoogleFonts.montserrat(fontSize: 30),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            maximumSize: Size(150, 80),
                            minimumSize: Size(150, 80),
                            primary: kConstants().primaryColor,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))));
                  }),
                )),
          ],
        ),
      ),
    ));
  }
}
