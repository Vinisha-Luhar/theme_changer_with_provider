import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_changer_with_provider/provider/theme_provider.dart';

class ThemeScreen extends StatefulWidget {
  const ThemeScreen({Key? key}) : super(key: key);

  @override
  State<ThemeScreen> createState() => _ThemeScreenState();
}

class _ThemeScreenState extends State<ThemeScreen> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Changer App',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            RadioListTile<ThemeMode>(
                value: ThemeMode.light,
                groupValue: themeProvider.getThemeMode,
                onChanged: themeProvider.setThemeMode,
                title: const Text("Light Mode"),
            ),
            RadioListTile<ThemeMode>(
              value: ThemeMode.dark,
              groupValue: themeProvider.getThemeMode,
              onChanged: themeProvider.setThemeMode,
              title: const Text("Dark Mode"),
            ),
            RadioListTile<ThemeMode>(
              value: ThemeMode.system,
              groupValue: themeProvider.getThemeMode,
              onChanged: themeProvider.setThemeMode,
              title: const Text("System Mode"),
            )
          ],
        ),
      ),
    );
  }
}
