import 'package:flutter/material.dart';
import 'package:hospital_login_form/sign_in_page.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
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
                  padding: const EdgeInsets.only(top: 40, left: 15, right: 35),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Create Your\nAccount',
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
                      const SizedBox(height: 5), // To control the top space

                      // Full Name field
                      SizedBox(
                        width: 350,
                        height: 70,
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.person, size: 27),
                            labelText: 'Full Name',
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

                      const SizedBox(height: 10), // Spacing after Email field

                      // Password field
                      SizedBox(
                        width: 350,
                        height: 80,
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
                      const SizedBox(height: 2),
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
                            labelText: 'Password',
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
                      const SizedBox(height: 2),
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
                            labelText: 'Confirm password',
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

                      const SizedBox(
                          height:
                              10), // Adjust this value to move the button closer

                      // Log in button
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
                              'SIGN UP',
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white),
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 10), // Spacing after Log in button

                      const Text(
                        "Already have an account?",
                        style:
                            TextStyle(fontSize: 21,  color: Color.fromARGB(255, 89, 87, 87)),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignInScreen()));
                        },
                        child: const Text(
                          'Sign In',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 23,
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
