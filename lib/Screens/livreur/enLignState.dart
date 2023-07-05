import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class enLigne extends StatefulWidget {
  const enLigne({Key? key}) : super(key: key);

  @override
  State<enLigne> createState() => _enLigneState();
}

class _enLigneState extends State<enLigne> {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return SafeArea(child: Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        height: size.height,
        width: size.width,
        decoration:  BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/hors.png"),
              fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Vous etes En Ligne ! ",style: GoogleFonts.montserrat(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w700),),
            SizedBox(height: 200,),
            Text("En Attente D’offres...",style: GoogleFonts.montserrat(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w500),)
          ],
        ),
      ),
    ));
  }
}
