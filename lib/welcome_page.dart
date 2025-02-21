import 'package:flutter/material.dart';
import 'package:hospital_login_form/sign_in_page.dart';
import 'package:hospital_login_form/sign_up.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xffB81736),
                  Color(0xff281537),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 7),
                  child: Container(
                    width: 210, // Adjust the width and height as needed
                    height: 280,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/Glamgologo.png'),
                        fit: BoxFit
                            .cover, // You can change this to fit, contain, etc.
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 180),
                  child: Text(
                    'GLAM BEAUTY',
                    style: TextStyle(
                      fontSize: 37,
                      fontFamily: 'Contrail',
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const Text(
                  'Welcome Back',
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 15),
                ElevatedButton(
                  onPressed: () {
                    // Logic happens here
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignInScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    side: const BorderSide(
                      color: Colors.white,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: Ink(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xffB81736),
                          Color(0xff281537),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      constraints: const BoxConstraints(
                          minHeight: 55, minWidth: 10, maxWidth: 335),
                      child: const Text(
                        'SIGN IN',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Logic happens here
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    constraints: const BoxConstraints(
                        minHeight: 55, minWidth: 10, maxWidth: 287),
                    child: const Text(
                      'SIGN UP',
                      style: TextStyle(
                        fontSize: 25,
                        color: Color(0xff281537),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                const Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Unlock your beauty potential...',
                    style: TextStyle(
                      fontFamily: 'Contrail',
                      fontSize: 20,
                      color: Color.fromARGB(255, 230, 228, 228),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
