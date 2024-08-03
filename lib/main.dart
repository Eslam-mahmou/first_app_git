import 'package:first_git_app/Screens/HomePage/Hadeth/hadith_details.dart';
import 'package:first_git_app/Screens/HomePage/Quran/sura_details.dart';
import 'package:flutter/material.dart';
import 'Screens/HomePage/HomeScreen.dart';
import 'Utlis/ThemeMode.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyThemeData.themeMode,
      initialRoute: '/',
      routes: {
        '/':(context)=>const HomePage(),
        SuraDetails.routeName :(context) =>const SuraDetails(),
        HadithDetails.routeName: (context) => const HadithDetails(),
      },
    );
  }
}
