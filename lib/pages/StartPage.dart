import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:urbanbite_gdgoc/pages/LoginScreen.dart';
import 'package:urbanbite_gdgoc/pages/SignUpScreen.dart';

class Startpage extends StatelessWidget {
  const Startpage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: width * 0.08,
                vertical: height * 0.04),
            child: Center(
              child: Container(height: height*.7,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: height*0.3,
                        child: Center(
                          child: Image.asset("assets/imageassets/urbanbitelogonobgnotext.png",
                            fit: BoxFit.contain,),
                        ),
                      ),
                      SizedBox(height: height*0.07,),
                      Text("Welcome to UrbanBite",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.bold,
                        fontSize: 28
                      ),),
                      SizedBox(height: height*0.01,),
                      Text("Your Favourite Food, Delivered Fast",
                        style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          color: Colors.grey[600]
                        ),),
                      SizedBox(
                        height: height*0.06,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child:
                        ElevatedButton(onPressed: () {
                            Navigator.pushReplacement(context, MaterialPageRoute(builder:
                            (context) => LoginScreen()));},
                            child: Text("Login",
                            style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white
                            ),),
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                              vertical: height * 0.020,
                            ),
                            backgroundColor: Color(0xFFEB3A42),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          )
                        ),),
                      ),
                      SizedBox(
                        height: height*0.02,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child:
                        OutlinedButton(onPressed: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder:
                              (context) => SignUpScreen()));},
                          child: Text("SignUp",
                            style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Color(0xFFEB3A42)
                            ),),
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(color: Color(0xFFEB3A42), width: 2),
                              padding: EdgeInsets.symmetric(
                                vertical: height * 0.020,
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              )
                          ),),
                      )
                    ],
                  )
                ),
              ),
            ),
          )),
    );
  }
}
