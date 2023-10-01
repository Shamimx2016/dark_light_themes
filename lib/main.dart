
import 'package:dark_light_themes/screen/home_page.dart';
import 'package:dark_light_themes/themes/themes.dart';
import 'package:dark_light_themes/themes/themes_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemesProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dark/Light Themes',
      theme: Provider.of<ThemesProvider>(context).themeData,
      home: const HomePage(),
    );
  }
}
