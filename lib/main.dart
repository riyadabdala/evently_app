import 'package:evently/core/routes/app_route.dart';
import 'package:evently/core/theme/app_theme_manager.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     theme:AppThemeManager.lightTheme,
     onGenerateRoute:AppRoutes.OnGeneratedRoute,
    );
  }
}

