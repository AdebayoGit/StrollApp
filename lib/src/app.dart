import 'package:flutter/material.dart';

import 'common/config/config.dart';
import 'features/home/presentation/screens/home_screen.dart';

class StrollApp extends StatelessWidget {
  const StrollApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark, //Would usually be system
      home: const HomeScreen(),
    );
  }
}
