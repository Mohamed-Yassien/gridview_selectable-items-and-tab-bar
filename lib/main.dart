import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_selectable_items/tab_bar_screen.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF2B3230),
        textTheme: const TextTheme(
          bodyText1: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF2B3230),
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Color(0xFF2B3230),
          ),
        ),
      ),
      home: const TabBarScreen(),
    );
  }
}
