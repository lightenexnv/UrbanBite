import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:urbanbite_gdgoc/pages/StartPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0xFF1883E7),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1883E7),
          centerTitle: true,
        ),
        textTheme: GoogleFonts.dmSansTextTheme(),
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF1883E7))
      ),
      debugShowCheckedModeBanner: false,

      home: Startpage(),

    );
  }
}

