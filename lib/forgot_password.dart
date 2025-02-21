import 'package:flutter/material.dart';
import 'package:hospital_login_form/sign_in_page.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
            size: 35,
          ),
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => const SignInScreen()),
            );
          },
        ),
      ),
      body: Stack(
        children: [
          // White container for the form
          Container(
            width: double.infinity,
            height: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
          ),

          // Content within scroll view
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 35),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Forgotten password?',
                      style: TextStyle(
                        fontSize: screenWidth * 0.090, // Responsive font size
                        //fontFamily: 'Inter2',
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.only(right: 17),
                  child: Text(
                    "Enter your email address to receive an email\nwith your reset password instructions",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 120, 118, 118),
                    ),
                  ),
                ),
                const SizedBox(height: 20), // Add some spacing for layout
                Column(
                  children: [
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
                    // Log in button
                    const SizedBox(height: 100),
                    ElevatedButton(
                      onPressed: () {
                        // Logic happens here
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
                            'SEND',
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
