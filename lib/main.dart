import 'package:flutter/material.dart';
import 'package:widget_test/pages/home_page.dart';
import 'package:widget_test/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget Test',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF6C3AD1)),
      ),
      routes: {Routes.home: (context) => const HomePage()},
      initialRoute: Routes.home,
    );
  }
}
