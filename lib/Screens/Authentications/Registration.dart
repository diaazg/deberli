import 'package:flutter/material.dart';
import 'package:swo/Screens/firstPages/accountType.dart';
import 'package:swo/Screens/kConstants.dart';
import 'package:google_fonts/google_fonts.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.white,
      body:SingleChildScrollView(
        child:  Container(
          height: size.height,
          width: size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/splashScreen/1.jpg"),
                fit: BoxFit.cover),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Container(
                  height: size.height*0.3,
                  width: size.width,
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      Container(
                        child: Image.asset("images/logo.png"),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                    width: size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.vertical(top: Radius.circular(20))
                    ),
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Material(
                          color: Colors.transparent,
                          elevation: 10,
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                            width: size.width*0.7,
                            decoration: BoxDecoration(color: Color(0xFFF7F6F7),borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: TextFormField(
                                onChanged: (val){
                                  setState(() {

                                  });
                                },
                                validator: (val)=>val!.isEmpty?'Enterer votre nom':null,

                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                    suffixIconColor: Colors.black54,
                                    focusColor: Colors.black54,
                                    fillColor: Colors.black54,
                                    border: InputBorder.none,
                                    hintText: 'Nom d \' utilisater',


                                ),
                              ),
                            ),
                          ),
                        ),
                        Material(
                          color: Colors.transparent,
                          elevation: 10,
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                            width: size.width*0.7,
                            decoration: BoxDecoration(color: Color(0xFFF7F6F7),borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: TextFormField(
                                onChanged: (val){
                                  setState(() {

                                  });
                                },
                                validator: (val)=>val!.isEmpty?'Entrer votre num téléphone':null,
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                    suffixIconColor: Colors.black54,
                                    focusColor: Colors.black54,
                                    fillColor: Colors.black54,
                                    border: InputBorder.none,
                                    hintText: 'Numéro de téléphone ',


                                ),
                              ),
                            ),
                          ),
                        ),
                        Material(
                          color: Colors.transparent,
                          elevation: 10,
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                            width: size.width*0.7,
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
                                    hintText: 'Mot de pass',


                                ),
                              ),
                            ),
                          ),
                        ),
                        Material(
                          color: Colors.transparent,
                          elevation: 10,
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                            width: size.width*0.7,
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
                                    hintText: 'Confirm le mot de pass',
                                  

                                ),
                              ),
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>accountType()));
                          },
                          child: Center(
                            child: Text(
                              "Register",
                              style: GoogleFonts.montserrat(fontSize: 25),
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              maximumSize: Size(170, 80),
                              minimumSize: Size(170, 80),
                              primary: kConstants().primaryColor,
                              elevation: 10,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50))),
                        ),


                      ],
                    ),
                  ))

            ],
          ),
        ),
      ),
    ));
  }
}
