import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_app/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: GoogleFonts.poppins().fontFamily,
          brightness: Brightness.light,
          appBarTheme: const AppBarTheme(backgroundColor: Colors.orange)),
      darkTheme: ThemeData(
        scaffoldBackgroundColor: Colors.grey.shade800,
        brightness: Brightness.dark,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.grey),
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      themeMode: MediaQuery.platformBrightnessOf(context) == Brightness.dark
          ? ThemeMode.dark
          : ThemeMode.light,
      home: const Homepage(),
    );
  }
}

class ThemePage extends StatelessWidget {
  const ThemePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "MyApp",
        ),
        centerTitle: true,
      ),
    );
  }
}
