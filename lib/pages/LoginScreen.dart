import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:urbanbite_gdgoc/pages/HomeScreen.dart';
import 'package:urbanbite_gdgoc/pages/SignUpScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});


  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isPasswordVisible = false;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  void _submitForm(){
    if(_formKey.currentState!.validate()){
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Login Successful')),
      );
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()));

    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Login",
          style: GoogleFonts.dmSans(
            fontSize: width * 0.06,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFFF9F9FF),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(padding: EdgeInsets.symmetric(
                horizontal: width * 0.08,
                vertical: height * 0.04,
            ),
            child: Form(
              key: _formKey,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        height: height*0.2,
                        child: Center(child: Image.asset("assets/imageassets/urbanbitelogonobgnotext.png"))),
                    SizedBox(height: height*0.07,),
                    Text("Welcome To UrbanBite",
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.bold,
                      fontSize: 28
                    ),),
                    SizedBox(height: height*0.01,),
                    Text("Login To Continue",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.grey[600]
                      ),),
                    SizedBox(height: height*0.05,),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Enter Email";
                        } else if (!value.contains("@")) {
                          return "Please Enter Valid Email Address";
                        }
                        return null;
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: "Enter Email or Username",
                        hintStyle: GoogleFonts.dmSans(
                            color: Colors.black
                        ),
                        labelText: "Enter Email or Username",
                          labelStyle: GoogleFonts.dmSans(
                              color: Colors.black
                          ),
                        prefixIcon: Icon(Icons.email_outlined,
                        color: Color(0xFFEB3A42),),
                        focusedBorder: OutlineInputBorder(
                          borderRadius:BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color(0xFFEB3A42)
                          )
                        ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius:BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Color(0xFFEB3A42)
                              )
                          )

                      ),

                    ),
                    SizedBox(height: height*0.02,),
                    TextFormField(
                      obscureText: !_isPasswordVisible,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please Enter Your Password";
                          } else if (value.length < 6) {
                            return "Password must be at least 6 characters long";
                          }
                          return null;
                        },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          hintText: "Enter Password",
                          hintStyle: GoogleFonts.dmSans(
                              color: Colors.black
                          ),
                          labelText: "Enter Password",
                          labelStyle: GoogleFonts.dmSans(
                              color: Colors.black
                          ),
                          prefixIcon: Icon(Icons.lock_outline,
                            color: Color(0xFFEB3A42),),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isPasswordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.grey[600],
                          ),
                          onPressed: () {
                            setState(() {
                              _isPasswordVisible = !_isPasswordVisible;
                            });
                          },
                        ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius:BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Color(0xFFEB3A42)
                              )
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius:BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Color(0xFFEB3A42)
                              )
                          ),

                      ),

                    ),
                    SizedBox(height: height*0.02,),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(onPressed: _submitForm,
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                vertical: height * 0.020,
                              ),
                              backgroundColor: Color(0xFFEB3A42),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              )
                          ),
                          child: Text("Login",
                          style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white
                          ),) ),
                    ),
                    SizedBox(height: height*0.001),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account?",
                          style: GoogleFonts.dmSans(
                            fontSize: 14,
                            color: Colors.grey[600],
                          ),),

                        //ToDo:-. Use Inkwell

                        TextButton(onPressed: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder:
                          (context) => SignUpScreen()));
                        }, child: Text("Sign Up",
                          style: GoogleFonts.dmSans(
                            fontSize: 14,
                            color: const Color(0xFFEB3A42),
                            fontWeight: FontWeight.bold
                          ),),)

                      ],
                    )


                  ],
                ),
              ),
            ),),
          ))
    );
  }
}
