import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:meals/widgets/screen_manager.dart';

final theme = ThemeData(
  // useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 131, 57, 0),
  brightness : Brightness.dark,
  ),
  textTheme: GoogleFonts.poppinsTextTheme()
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meals',
      theme: theme,
      home:  ScreenManager(),
    );
  }
}

