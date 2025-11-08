import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:urbanbite_gdgoc/pages/HomeScreen.dart';
import 'package:urbanbite_gdgoc/pages/LoginScreen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Account Created Successfully')),
      );
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
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
          "Sign Up",
          style: GoogleFonts.dmSans(
            fontSize: width * 0.06,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFFF9F9FF),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
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
                      height: height * 0.07,
                      child: Center(
                        child: Image.asset(
                          "assets/imageassets/urbanbitelogonobgnotext.png",
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.07),
                    Text(
                      "Create Your Account",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                      ),
                    ),
                    SizedBox(height: height * 0.01),
                    Text(
                      "Sign Up To Get Started",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.grey[600],
                      ),
                    ),
                    SizedBox(height: height * 0.05),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Enter Your Name";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: "Enter Full Name",
                        hintStyle: GoogleFonts.dmSans(color: Colors.black),
                        labelText: "Full Name",
                        labelStyle: GoogleFonts.dmSans(color: Colors.black),
                        prefixIcon: const Icon(
                          Icons.person_outline,
                          color: Color(0xFFEB3A42),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                          const BorderSide(color: Color(0xFFEB3A42)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                          const BorderSide(color: Color(0xFFEB3A42)),
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.02),
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
                        hintText: "Enter Email Address",
                        hintStyle: GoogleFonts.dmSans(color: Colors.black),
                        labelText: "Email Address",
                        labelStyle: GoogleFonts.dmSans(color: Colors.black),
                        prefixIcon: const Icon(
                          Icons.email_outlined,
                          color: Color(0xFFEB3A42),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                          const BorderSide(color: Color(0xFFEB3A42)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                          const BorderSide(color: Color(0xFFEB3A42)),
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.02),
                    TextFormField(
                      obscureText: !_isPasswordVisible,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Enter Password";
                        } else if (value.length < 6) {
                          return "Password must be at least 6 characters long";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        hintStyle: GoogleFonts.dmSans(color: Colors.black),
                        labelText: "Password",
                        labelStyle: GoogleFonts.dmSans(color: Colors.black),
                        prefixIcon: const Icon(
                          Icons.lock_outline,
                          color: Color(0xFFEB3A42),
                        ),
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
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                          const BorderSide(color: Color(0xFFEB3A42)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                          const BorderSide(color: Color(0xFFEB3A42)),
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.02),
                    TextFormField(
                      obscureText: !_isConfirmPasswordVisible,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Confirm Your Password";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: "Confirm Password",
                        hintStyle: GoogleFonts.dmSans(color: Colors.black),
                        labelText: "Confirm Password",
                        labelStyle: GoogleFonts.dmSans(color: Colors.black),
                        prefixIcon: const Icon(
                          Icons.lock_outline,
                          color: Color(0xFFEB3A42),
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isConfirmPasswordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.grey[600],
                          ),
                          onPressed: () {
                            setState(() {
                              _isConfirmPasswordVisible =
                              !_isConfirmPasswordVisible;
                            });
                          },
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                          const BorderSide(color: Color(0xFFEB3A42)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                          const BorderSide(color: Color(0xFFEB3A42)),
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.04),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: _submitForm,
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                            vertical: height * 0.022,
                          ),
                          backgroundColor: const Color(0xFFEB3A42),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          elevation: 4,
                          shadowColor: const Color(0xFFEB3A42).withOpacity(0.4),
                        ),
                        child: Text(
                          "Sign Up",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account?",
                          style: GoogleFonts.dmSans(
                            fontSize: 14,
                            color: Colors.grey[600],
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoginScreen(),
                              ),
                            );
                          },
                          child: Text(
                            "Login",
                            style: GoogleFonts.dmSans(
                              fontSize: 14,
                              color: const Color(0xFFEB3A42),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
