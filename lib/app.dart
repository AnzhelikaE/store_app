import 'package:flutter/material.dart';
import 'package:kit_store_start/features/authentication/screens/home/home_screen.dart';
import 'package:kit_store_start/utils/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: TAppTheme.lightTheme,
      home: HomeScreen(),
    );
  }
}
