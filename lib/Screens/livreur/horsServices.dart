import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swo/Screens/livreur/enLignState.dart';



class horsLign extends StatefulWidget {
  const horsLign({Key? key}) : super(key: key);

  @override
  State<horsLign> createState() => _horsLignState();
}

class _horsLignState extends State<horsLign> {
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
            Text("Vous etes Hors Service ! ",style: GoogleFonts.montserrat(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w700),),
            SizedBox(height: 200,),
            Column(
              children: [
                Text("Aller en ligne",style: GoogleFonts.montserrat(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w700),),
                SizedBox(height: 20,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>enLigne()));
                  },
                  child: Container(
                    height: size.height*0.1,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)
                    ),
                    child: Center(
                      child: Text("Let’s Go !",style: GoogleFonts.montserrat(),),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
