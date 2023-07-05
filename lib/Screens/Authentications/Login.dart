import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swo/Screens/Authentications/Registration.dart';
import 'package:swo/Screens/kConstants.dart';



class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
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
                            width: size.width*0.9,
                            decoration: BoxDecoration(color: Color(0xFFF7F6F7),borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: TextFormField(
                                onChanged: (val){
                                  setState(() {

                                  });
                                },
                                validator: (val)=>val!.isEmpty?'Enter an email':null,

                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                    suffixIconColor: Colors.black54,
                                    focusColor: Colors.black54,
                                    fillColor: Colors.black54,
                                    border: InputBorder.none,
                                    hintText: 'email,phone',
                                    suffixIcon: Icon(Icons.person_2_outlined)

                                ),
                              ),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Material(
                              color: Colors.transparent,
                              elevation: 10,
                              child: Container(
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
                                        hintText: 'Mot de pass',
                                        suffixIcon: Icon(Icons.remove_red_eye)

                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Text("Mot de pass oublié",style: GoogleFonts.montserrat(color: Colors.red,fontSize: 15),),
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Center(
                            child: Text(
                              "Log in",
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
                        Center(child: Text("Or",style: GoogleFonts.montserrat(color: Colors.green,fontSize: 20),)),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));
                          },
                          child: Center(
                            child: Text(
                              "Sign up",
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
                  ))

            ],
          ),
        ),
      ),
    ));
  }
}
