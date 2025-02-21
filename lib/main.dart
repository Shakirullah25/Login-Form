import 'package:flutter/material.dart';
import 'package:hospital_login_form/welcome_page.dart';

void main() {
  runApp(const HospitalApp());
}

class HospitalApp extends StatelessWidget {
  const HospitalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          shadowColor: Colors.transparent,
        ),
      ),
      home: const Scaffold(
        resizeToAvoidBottomInset: false,
        body: WelcomePage(), // Initial route (First page to be displayed)
      ),
    );
  }
}
