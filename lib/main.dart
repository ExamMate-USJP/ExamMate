import 'package:flutter/material.dart';
import 'routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(ExamMateApp());
}

class ExamMateApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ExamMate",
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.splash,
      routes: AppRoutes.getRoutes(),
    );
  }
}
