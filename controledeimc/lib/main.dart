import 'package:controledeimc/Homepage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/widgets.dart';

import 'package:controledeimc/hero.dart';
import 'package:controledeimc/DB.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Open the database
  //final Future<Database> database = HeroDB.getDatabaseConnect();

  // Main work
  // Batman
  var batman = SuperHero(
    id: 0,
    name: "Batman",
    age: 50,
    ability: "Rich",
  );

  // Superman
  var superman = SuperHero(
    id: 1,
    name: "Superman",
    age: 35,
    ability: "I can fly",
  );

  // Main work
  await HeroDB.insertData(batman);
  await HeroDB.insertData(superman);
  print(await HeroDB.showAllData());

  await HeroDB.deleteData(0);
  print(await HeroDB.showAllData());

  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: ThemeData(
        useMaterial3: true,
        // Define the default brightness and colors.
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.light,
        ),

        textTheme: TextTheme(
          displayLarge: const TextStyle(
            fontSize: 72,
            fontWeight: FontWeight.bold,
          ),
          titleLarge: GoogleFonts.oswald(
            fontSize: 30,
            fontStyle: FontStyle.italic,
          ),
          bodyMedium: GoogleFonts.merriweather(),
          displaySmall: GoogleFonts.pacifico(),
        ),
      ), // Cor d
    );
  }
}
