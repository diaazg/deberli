import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../kConstants.dart';
import 'package:searchfield/searchfield.dart';


class ResHome extends StatefulWidget {
  const ResHome({Key? key}) : super(key: key);

  @override
  State<ResHome> createState() => _ResHomeState();
}

class _ResHomeState extends State<ResHome> {

List<String> types=["1","2","3"];
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    Future<void> _showAlertDialog() async {
      return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            // <-- SEE HERE
            title: Row(
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
                            hintText: 'Détails',


                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Choisissez votre emplacement "),
                      Icon(Icons.location_on_outlined,color: kConstants().primaryColor,)
                    ],
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
                      "Post",
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

    Future<void> _showDialog() async {
      return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            // <-- SEE HERE
            title: Row(
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

            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  SizedBox(height: 20,),
                  Image.asset('images/card/1.jpg',height: 100,width:100,),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                    Text("Type de produit: ",style: GoogleFonts.montserrat(fontSize: 20,fontWeight: FontWeight.w800),) ,
                      Text("  Restes \n de pain",style: GoogleFonts.montserrat(fontSize: 20),)
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text("Quantité: ",style: GoogleFonts.montserrat(fontSize: 20,fontWeight: FontWeight.w800),) ,
                      Text("   6 sachéts.",style: GoogleFonts.montserrat(fontSize: 20),)
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text("Détails: ",style: GoogleFonts.montserrat(fontSize: 20,fontWeight: FontWeight.w800),) ,
                      Text("  pain yabess wcute.",style: GoogleFonts.montserrat(fontSize: 20),)
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text("Etat de service: ",style: GoogleFonts.montserrat(fontSize: 20,fontWeight: FontWeight.w800),) ,
                      Text("   En attente" ,style: GoogleFonts.montserrat(fontSize: 20,color: kConstants().primaryColor))
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text("Livreur : ",style: GoogleFonts.montserrat(fontSize: 20,fontWeight: FontWeight.w800),) ,
                      Text("   @Meflah",style: GoogleFonts.montserrat(fontSize: 20),)
                    ],
                  ),

                ],
              ),
            ),
            actions: <Widget>[
              Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Le numéro:",style: GoogleFonts.montserrat(fontSize: 20,fontWeight: FontWeight.w800),) ,
                  ElevatedButton(
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
                ],
              )

            ],
          );
        },
      );
    }

    return SafeArea(child: Scaffold(
      backgroundColor: Color(0xFF3EB075),
      body: Column(
        children: [
        Container(
          height: size.height*0.15,
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
                GestureDetector(
                  onTap: (){
                    _showAlertDialog();
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.add_box_outlined,color: kConstants().primaryColor,),
                        SizedBox(width: 20,),
                        Text("Add",style: GoogleFonts.montserrat(fontSize: 20,fontWeight: FontWeight.w600),)
                      ],
                    ),
                  ),
                ),
               SizedBox(height: 20,),
               Expanded(child:  ListView.builder(itemCount: 5,itemBuilder: (BuildContext , context){
                 return Container(
                   margin: EdgeInsets.only(bottom: 10),
                   padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                   height: size.height*0.2,
                   width: size.width*0.5,
                   decoration: BoxDecoration(
                       color: Color(0xFFF7F6F7),
                       borderRadius: BorderRadius.circular(25)
                   ),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.end,
                     children: [
                       Text("En attent",style: GoogleFonts.montserrat(fontSize: 20,color: kConstants().primaryColor)),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Image.asset('images/card/1.jpg'),
                           Column(
                             children: [
                               Text("Le type",style: GoogleFonts.montserrat(fontSize: 30,color:Colors.black)),
                               SizedBox(height: 30,),
                               GestureDetector(
                                 onTap: (){
                                    _showDialog();
                                 },
                                 child: Text("Voir plus",style: GoogleFonts.montserrat(fontSize: 20,color:Color(0xFFEE765E),decoration: TextDecoration.underline)),
                               )
                             ],
                           )
                         ],
                       )
                     ],
                   ),

                 );
               }))
              ],
            ),
          ))
        ],
      ),
    ));
  }
}

