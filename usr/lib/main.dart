import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/about_screen.dart';
import 'screens/academics_screen.dart';

void main() {
  runApp(const JNNCEApp());
}

class JNNCEApp extends StatelessWidget {
  const JNNCEApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JNNCE Shivamogga',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF0D47A1)),
        useMaterial3: true,
        fontFamily: 'Roboto',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/about': (context) => const AboutScreen(),
        '/academics': (context) => const AcademicsScreen(),
      },
    );
  }
}
