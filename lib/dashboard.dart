import 'package:flutter/material.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Dashboard',
          style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold,),
        ),
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: false,
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
        actions: [
          Align(
            alignment: Alignment.centerRight,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert_rounded,
                size: 35,
                color: Colors.white,
              ),
            ),
          ),
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 35,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              Color(0xffB81736),
              Color(0xff281537),
            ],
          ),
        ),
        child: const Center(
          child: Text(
            "Oops, looks like this App page\nis still under designing.\nKindly come back later.",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              fontFamily: 'Inter',
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
