import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swo/Screens/kConstants.dart';
import 'package:searchfield/searchfield.dart';

class HomeFarmer extends StatefulWidget {
  const HomeFarmer({Key? key}) : super(key: key);

  @override
  State<HomeFarmer> createState() => _HomeFarmerState();
}

class _HomeFarmerState extends State<HomeFarmer> {
  List<String>types=["a","b","c"];


  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;

    Future<void> _showAlert() async {
      return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(

            // <-- SEE HERE
            title:Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.highlight_remove_outlined,color: Color(0xFFEE765F),),
                )
              ],
            ) ,

            content: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: ListBody(

                children: <Widget>[
                  Center(
                    child: Column(
                      children: [
                        Text("Prix total",style: GoogleFonts.montserrat(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w600),),
                        SizedBox(height: 10,),
                        Text("1200 DA",style: GoogleFonts.montserrat(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w200),),
                      ],
                    ),
                  )

                ],
              ),
            ),
            actions: <Widget>[
              Center(
                child: ElevatedButton(
                  onPressed: () {

                  },
                  child: Center(
                    child: Text(
                      "Confirmer",
                      style: GoogleFonts.montserrat(fontSize: 15),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      maximumSize: Size(150, 70),
                      minimumSize: Size(150, 70),
                      primary: kConstants().primaryColor,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                ),
              ),
            ],
          );
        },
      );
    }
    Future<void> _showAlertDialog() async {
      return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            // <-- SEE HERE
            title: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.highlight_remove_outlined,color: Color(0xFFEE765F),),
                    )
                  ],
                ),
                Text("Veuillez entrer le type des déchets alimentaires et la quantité.",style: GoogleFonts.montserrat(fontSize: 15,color: Colors.black54),)
              ],
            ),

            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Material(
                    color: Colors.transparent,
                    elevation: 40,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      height: size.height * 0.07,
                      width: size.width * 0.4,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: SearchField(
                          suggestions: types
                              .map((e) => SearchFieldListItem(e,
                              child: Container(
                                margin: EdgeInsets.all(10),
                                child: Text(e),
                              )))
                              .toList(),
                          suggestionState: Suggestion.expand,
                          hint: 'Type de produit',
                          searchStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.black.withOpacity(0.8),
                          ),
                          validator: (x) =>
                          x!.isEmpty ? 'Please enter the medicine type' : null,
                          searchInputDecoration: InputDecoration(

                              suffixIcon: Icon(Icons.arrow_drop_down_circle_outlined,color: Colors.black54,),
                              border: InputBorder.none,
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)),
                              hoverColor: Colors.black,
                              fillColor: Colors.black,
                              focusColor: Colors.black,
                              isCollapsed: false
                          ),
                          maxSuggestionsInViewPort: 2,
                          itemHeight: 50,
                          onSubmit: (x) {
                            setState(() {

                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Material(
                    color: Colors.transparent,
                    elevation: 40,
                    child: Container(
                      margin: EdgeInsets.only(top: 10),
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                      width: size.width*0.9,
                      decoration: BoxDecoration(color: Color(0xFFF7F6F7),borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: TextFormField(
                          onChanged: (val){
                            setState(() {

                            });
                          },
                          validator: (val)=>val!.isEmpty?'Entrer votre mot de pass':null,
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                            suffixIconColor: Colors.black54,
                            focusColor: Colors.black54,
                            fillColor: Colors.black54,
                            border: InputBorder.none,
                            hintText: 'Quantité',


                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
            actions: <Widget>[
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    _showAlert();
                  },
                  child: Center(
                    child: Text(
                      "Commander",
                      style: GoogleFonts.montserrat(fontSize: 15),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      maximumSize: Size(150, 70),
                      minimumSize: Size(150, 70),
                      primary: kConstants().primaryColor,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                ),
              ),
            ],
          );
        },
      );
    }
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: size.height*0.2,
                  decoration: BoxDecoration(
                      color: Color(0xFF3EA770),
                      borderRadius: BorderRadius.vertical(bottom: Radius.circular(25))
                  ),
                  child: Row(

                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Hello \nHoussem",style: GoogleFonts.montserrat(fontSize: 30,fontWeight: FontWeight.w800,color: Colors.white),),
                            Text("Passez votre commande !",style: GoogleFonts.montserrat(fontSize: 20,color: Colors.white),),

                          ],
                        ),
                      ),


                    ],
                  ),
                ),
                SizedBox(height: 10,),
                GestureDetector(
                  onTap: (){
                    _showAlertDialog();
                  },
                  child: Material(
                    elevation: 20,
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color(0xFFF7F6F7)),
                      child: Center(
                        child: Icon(Icons.add,color: kConstants().primaryColor,size: 60,),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: size.height*0.3,
              width: size.width,
              child: Image.asset("images/2.png"),
            )
          ],
        ),
      ),
    ));
  }
}
