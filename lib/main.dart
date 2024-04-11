import 'package:flutter/material.dart';
import 'package:theme_changer_with_provider/provider/theme_provider.dart';
import 'package:theme_changer_with_provider/screen/theme_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: Builder(
        builder: (context) {
          final themeProvider = Provider.of<ThemeProvider>(context);
          return MaterialApp(
            title: 'Theme Changer App',
            themeMode: themeProvider.getThemeMode,
            darkTheme: ThemeData(
              brightness: Brightness.dark
            ),
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
              brightness: Brightness.light
            ),
            home: const ThemeScreen(),
          );
        }
      ),
    );
  }
}

