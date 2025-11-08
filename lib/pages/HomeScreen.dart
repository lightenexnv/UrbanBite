import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:urbanbite_gdgoc/pages/HomePageContent.dart';
import 'package:urbanbite_gdgoc/pages/MyOrders.dart';
import 'package:urbanbite_gdgoc/pages/MyProfile.dart';
import 'package:urbanbite_gdgoc/pages/Settings.dart';
import 'package:urbanbite_gdgoc/pages/StartPage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int selectedIndex = 0;
  final PageController pageController = PageController();

  List<Widget> pages = [
    Homepagecontent(),
    MyOrders(),
    Center(child: Text("Saved")),
    MyProfile(),
  ];

  void onTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
    pageController.jumpToPage(index);


  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: const<BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_bag),label: "My Order"),
        BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Saved"),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),


      ],
      currentIndex: selectedIndex,
      selectedLabelStyle: GoogleFonts.dmSans(
        fontWeight: FontWeight.bold
      ),
        unselectedLabelStyle: GoogleFonts.dmSans(
            fontWeight: FontWeight.bold
        ),
      selectedItemColor: Color(0xFFEB3A42),
      unselectedItemColor: Colors.grey[600],
      onTap: onTapped,),
      body: PageView(
        controller: pageController,
        children: pages,
      )
    );
  }
}
