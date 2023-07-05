import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swo/Screens/kConstants.dart';


class CommandInfo extends StatefulWidget {
  const CommandInfo({Key? key}) : super(key: key);

  @override
  State<CommandInfo> createState() => _CommandInfoState();
}

class _CommandInfoState extends State<CommandInfo> {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return SafeArea(child: Scaffold(
      backgroundColor: Color(0xFF3EB075),
      body: Column(
        children: [
          Container(
            height: size.height*0.3,
            width: size.width,
            child: Row(
              children: [
              ],
            ),
          ),

          Expanded(child: Container(
            padding: EdgeInsets.only(top: 10,left: 20,right: 20),
            width: size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:BorderRadius.vertical(top: Radius.circular(50))
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Text("Suivi de votre commande.",style: GoogleFonts.montserrat(color: Colors.black,fontSize: 25),)),
                SizedBox(height: 20,),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  height: size.height*0.2,
                  width: size.width,
                  decoration: BoxDecoration(
                      color: Color(0xFFF7F6F7),
                      borderRadius: BorderRadius.circular(25)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('images/card/1.jpg'),
                      Column(
                        children: [
                          Text("Restes de pain",style: GoogleFonts.montserrat(fontSize: 25,color:Colors.black,fontWeight: FontWeight.w600)),
                          SizedBox(height: 30,),
                          Text("Quantité: 6 sachéts",style: GoogleFonts.montserrat(fontSize: 20))
                        ],
                      )
                    ],
                  ),

                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Total : ",style: GoogleFonts.montserrat(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 25),),
                    Text("1200 DA",style: GoogleFonts.montserrat(color: Colors.black,fontSize: 25),)
                  ],
                ),
                Divider(
                  height: 100,
                  color: Colors.green,
                  thickness: 1,
                  indent : 10,
                  endIndent : 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("LIVRUER : ",style: GoogleFonts.montserrat(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 25),),
                    Text("ZELLAGUI Dia",style: GoogleFonts.montserrat(color: Colors.black,fontSize: 25),)
                  ],
                ),
                SizedBox(height: 20,),
                Center(
                  child: ElevatedButton(
                    onPressed: () {

                    },
                    child: Center(
                      child: Row(

                        children: [
                          Icon(Icons.call,color: Colors.white,size: 20,),
                          Text(
                            "+213549930141",
                            style: GoogleFonts.montserrat(fontSize: 15),
                          )
                        ],
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        maximumSize: Size(150, 60),
                        minimumSize: Size(150, 60),
                        primary: kConstants().primaryColor,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                  ),
                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    Text("Annulé",style: GoogleFonts.montserrat(color: Colors.deepOrangeAccent,),),
                    Icon(Icons.highlight_remove_sharp,color: Colors.deepOrangeAccent,)
                  ],
                )
                
              ],
            ),
          ))
        ],
      ),
    ));;
  }
}
