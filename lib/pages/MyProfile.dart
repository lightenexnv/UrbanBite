import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:urbanbite_gdgoc/pages/Settings.dart';
import 'package:urbanbite_gdgoc/pages/StartPage.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: CircleAvatar(
                        radius: 60,
                        backgroundColor: Colors.white,
                        backgroundImage:
                        const AssetImage("assets/imageassets/ProfilePhoto.jpg"),
                      ),
                    ),
                    SizedBox(height: height * 0.01),
                    Text(
                      "Neil Verma",
                      style: GoogleFonts.dmSans(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      "svak3456@gmail.com",
                      style: GoogleFonts.dmSans(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                    ),
                    const SizedBox(height: 32),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "12",
                                  style: GoogleFonts.dmSans(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xFFEB3A42),
                                  ),
                                ),
                                Text(
                                  "Orders",
                                  style: GoogleFonts.dmSans(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            Container(width: 1, height: 40, color: Colors.grey[300]),
                            Column(
                              children: [
                                Text(
                                  "8",
                                  style: GoogleFonts.dmSans(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xFFEB3A42),
                                  ),
                                ),
                                Text(
                                  "Saved",
                                  style: GoogleFonts.dmSans(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            Container(width: 1, height: 40, color: Colors.grey[300]),
                            Column(
                              children: [
                                Text(
                                  "5",
                                  style: GoogleFonts.dmSans(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xFFEB3A42),
                                  ),
                                ),
                                Text(
                                  "Reviews",
                                  style: GoogleFonts.dmSans(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {},
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: height * 0.015, horizontal: width * 0.04),
                              child: Row(
                                children: [
                                  Icon(Icons.person_outline_outlined,
                                      color: Color(0xFFEB3A42),
                                      size: height * 0.03),
                                  SizedBox(width: width * 0.04),
                                  Expanded(
                                    child: Text(
                                      "Edit Profile",
                                      style: GoogleFonts.dmSans(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: height * 0.02,
                                      ),
                                    ),
                                  ),
                                  Icon(Icons.arrow_forward_ios,
                                      color: Color(0xFFEB3A42),
                                      size: height * 0.03),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: height * 0.017),
                          InkWell(
                            onTap: () {},
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: height * 0.015, horizontal: width * 0.04),
                              child: Row(
                                children: [
                                  Icon(Icons.pin_drop_outlined,
                                      color: Color(0xFFEB3A42),
                                      size: height * 0.03),
                                  SizedBox(width: width * 0.04),
                                  Expanded(
                                    child: Text(
                                      "Delivery Address",
                                      style: GoogleFonts.dmSans(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: height * 0.02,
                                      ),
                                    ),
                                  ),
                                  Icon(Icons.arrow_forward_ios,
                                      color: Color(0xFFEB3A42),
                                      size: height * 0.03),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: height * 0.017),
                          InkWell(
                            onTap: () {},
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: height * 0.015, horizontal: width * 0.04),
                              child: Row(
                                children: [
                                  Icon(Icons.credit_card,
                                      color: Color(0xFFEB3A42),
                                      size: height * 0.03),
                                  SizedBox(width: width * 0.04),
                                  Expanded(
                                    child: Text(
                                      "Payment Methods",
                                      style: GoogleFonts.dmSans(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: height * 0.02,
                                      ),
                                    ),
                                  ),
                                  Icon(Icons.arrow_forward_ios,
                                      color: Color(0xFFEB3A42),
                                      size: height * 0.03),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: height * 0.017),
                          InkWell(
                            onTap: () {},
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: height * 0.015, horizontal: width * 0.04),
                              child: Row(
                                children: [
                                  Icon(Icons.notifications_outlined,
                                      color: Color(0xFFEB3A42),
                                      size: height * 0.03),
                                  SizedBox(width: width * 0.04),
                                  Expanded(
                                    child: Text(
                                      "Notifications",
                                      style: GoogleFonts.dmSans(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: height * 0.02,
                                      ),
                                    ),
                                  ),
                                  Icon(Icons.arrow_forward_ios,
                                      color: Color(0xFFEB3A42),
                                      size: height * 0.03),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: height * 0.017),
                          InkWell(
                            onTap: () {},
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: height * 0.015, horizontal: width * 0.04),
                              child: Row(
                                children: [
                                  Icon(Icons.settings,
                                      color: Color(0xFFEB3A42),
                                      size: height * 0.03),
                                  SizedBox(width: width * 0.04),
                                  Expanded(
                                    child: Text(
                                      "Settings",
                                      style: GoogleFonts.dmSans(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: height * 0.02,
                                      ),
                                    ),
                                  ),
                                  Icon(Icons.arrow_forward_ios,
                                      color: Color(0xFFEB3A42),
                                      size: height * 0.03),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: height * 0.017),
                          InkWell(
                            onTap: () {},
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: height * 0.015, horizontal: width * 0.04),
                              child: Row(
                                children: [
                                  Icon(Icons.question_mark,
                                      color: Color(0xFFEB3A42),
                                      size: height * 0.03),
                                  SizedBox(width: width * 0.04),
                                  Expanded(
                                    child: Text(
                                      "Help & Support",
                                      style: GoogleFonts.dmSans(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: height * 0.02,
                                      ),
                                    ),
                                  ),
                                  Icon(Icons.arrow_forward_ios,
                                      color: Color(0xFFEB3A42),
                                      size: height * 0.03),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: height * 0.017),
                          InkWell(
                            onTap: () {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) => Startpage()));
                            },
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: height * 0.015, horizontal: width * 0.04),
                              child: Row(
                                children: [
                                  Icon(Icons.logout_outlined,
                                      color: Color(0xFFEB3A42),
                                      size: height * 0.03),
                                  SizedBox(width: width * 0.04),
                                  Expanded(
                                    child: Text(
                                      "Logout",
                                      style: GoogleFonts.dmSans(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: height * 0.02,
                                      ),
                                    ),
                                  ),
                                  Icon(Icons.arrow_forward_ios,
                                      color: Color(0xFFEB3A42),
                                      size: height * 0.03),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
