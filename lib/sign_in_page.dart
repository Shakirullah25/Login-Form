import 'package:flutter/material.dart';
import 'package:hospital_login_form/dashboard.dart';
import 'package:hospital_login_form/forgot_password.dart';
import 'package:hospital_login_form/sign_up.dart';
import 'package:hospital_login_form/welcome_page.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        toolbarHeight: 40, // height of the appBar
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 35,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => const WelcomePage()),
            );
          },
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                Color(0xffB81736),
                Color(0xff281537),
              ],
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          // Background gradient container
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[
                  Color(0xffB81736),
                  Color(0xff281537),
                ],
              ),
            ),
          ),
          // Content within scroll view
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 15, right: 35),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Hello,\nSign in to continue',
                      style: TextStyle(
                        fontSize: screenWidth * 0.075, // Responsive font size
                        // fontFamily: 'Inter2',
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 40), // Add some spacing for layout

                // White container for the form
                Container(
                  width: double.infinity,
                  height: screenHeight * 0.80,
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35),
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                          height:
                              30), // Adjust this value to control the top space

                      // Email field
                      SizedBox(
                        width: 350,
                        height: 70,
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.mail, size: 27),
                            labelText: 'Email address',
                            labelStyle: const TextStyle(
                              fontSize: 19.8,
                              color: Color.fromARGB(255, 89, 87, 87),
                              fontWeight: FontWeight.bold,
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 20),
                            floatingLabelStyle: const TextStyle(
                                fontSize: 22, color: Color(0xffB81736)),
                            filled: true,
                            fillColor: Colors.white,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide:
                                  const BorderSide(color: Color(0xffB81736)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide:
                                  const BorderSide(color: Color(0xff281537)),
                            ),
                          ),
                          style: const TextStyle(fontSize: 22),
                        ),
                      ),

                      const SizedBox(height: 20), // Spacing after Email field

                      // Password field
                      SizedBox(
                        width: 350,
                        height: 80,
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.lock, size: 27),
                            suffixIcon: IconButton(
                              icon: const Icon(Icons.visibility_off_outlined,
                                  size: 27),
                              onPressed: () {},
                            ),
                            labelText: 'Enter password',
                            labelStyle: const TextStyle(
                              fontSize: 19.8,
                              color: Color.fromARGB(255, 89, 87, 87),
                              fontWeight: FontWeight.bold,
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 20),
                            floatingLabelStyle: const TextStyle(
                                fontSize: 22, color: Color(0xffB81736)),
                            filled: true,
                            fillColor: Colors.white,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide:
                                  const BorderSide(color: Color(0xffB81736)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide:
                                  const BorderSide(color: Color(0xff281537)),
                            ),
                          ),
                          style: const TextStyle(fontSize: 22),
                        ),
                      ),

                      const SizedBox(height: 0), // Spacing after Password field

                      // Forgot password button
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 0),
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        const ForgotPasswordScreen()),
                              );
                            },
                            child: const Text(
                              'Forgotten Password?',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 21,
                                  color: Color(0xffB81736)),
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(
                          height:
                              50), // Adjust this value to move the button closer

                      // Log in button
                      ElevatedButton(
                        onPressed: () {
                          // Logic happens here
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const DashBoardScreen()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22)),
                        ),
                        child: Ink(
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                                colors: [Color(0xffB81736), Color(0xff281537)]),
                            borderRadius: BorderRadius.circular(22),
                          ),
                          child: Container(
                            alignment: Alignment.center,
                            constraints: const BoxConstraints(
                                minHeight: 55, maxWidth: 355),
                            child: const Text(
                              'SIGN IN',
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white),
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 20), // Spacing after Log in button

                      const Text(
                        "Don't have an account?",
                        style: TextStyle(
                            fontSize: 21,
                            color: Color.fromARGB(255, 89, 87, 87)),
                      ),

                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpScreen()),
                          );
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 21,
                              color: Color(0xffB81736)),
                        ),
                      ),
                    ],
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
