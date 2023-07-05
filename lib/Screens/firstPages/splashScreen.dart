import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swo/Screens/kConstants.dart';
import 'package:swo/Screens/Authentications/Login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  List<Widget>pages=[
    Text("A partir d'aujourd'hui,aucun gaspillage alimentaire.",style:GoogleFonts.poppins(fontSize: 25,color: Colors.white) ,),
    Text("Page 2",style:GoogleFonts.poppins(fontSize: 25,color: Colors.white) ,),
    Text("Page 3",style:GoogleFonts.poppins(fontSize: 25,color: Colors.white) ,),
  ];
  final controller = PageController();
  bool isLastPage = false;
  int? ind;
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return SafeArea(child: Scaffold(
      body: Container(
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
             Container(
              height: size.height*0.3,
               child: Image.asset("images/logo.png"),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40),
              height: size.height*0.2,
              child: PageView(
                onPageChanged: (index) {
                  setState(() {
                    isLastPage = index == 2;
                    index == 0 ? ind = index + 2 : ind = index - 1;
                  });
                },
                controller: controller,
                children: pages,
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 60),
              child: Column(
                children: [
                  SmoothPageIndicator(
                    controller: controller,
                    count: 3,
                    effect: ExpandingDotsEffect(
                        dotColor: Colors.grey, activeDotColor: Color(0xFFD9D9D9)),
                    onDotClicked: (index) {
                      controller.animateToPage(index,
                          duration: Duration(milliseconds: 500), curve: Curves.ease);
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      isLastPage
                          ? Navigator.push(context, MaterialPageRoute(builder: (context)=>LogIn()))
                          : controller.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.ease);
                    },
                    child: Text(
                      isLastPage?'Commencer':'suivante',
                      style: GoogleFonts.montserrat(fontSize: 20,color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(200, 70),
                        primary: kConstants().primaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    ));
  }
}
