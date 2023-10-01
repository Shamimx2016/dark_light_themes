import 'package:dark_light_themes/components/box.dart';
import 'package:dark_light_themes/components/button.dart';
import 'package:dark_light_themes/themes/themes_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Box(
          color: Theme.of(context).colorScheme.primary,
          child: Button(
            color: Theme.of(context).colorScheme.secondary,
            onTap: () {
              Provider.of<ThemesProvider>(context,listen: false).toggleTheme();
            },
          ),
        ),
      ),
    );
  }
}
