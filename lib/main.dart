import 'package:flutter/material.dart';
import 'package:wallpaper_blaster/features/wallpaper_page/ui/wallpaper_view.dart';
import 'package:wallpaper_blaster/helper/theme_helper.dart';

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
        fontFamily: 'Poppins',
        useMaterial3: true,
        primarySwatch: Palette.palette1,
        scaffoldBackgroundColor: ThemeColors.bgColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: ThemeColors.bgColor,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(
            color: ThemeColors.black1,
          ),
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
            color: ThemeColors.black1,
          ),
        ),
      ),
      home: const WallPaperView(),
    );
  }
}
