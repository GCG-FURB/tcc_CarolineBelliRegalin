import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'modules/home/views/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Musicando - Aprenda brincando',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.firaSansTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: HomePage(),
    ).modular();
  }
}
