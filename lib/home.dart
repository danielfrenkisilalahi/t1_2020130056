import 'package:flutter/material.dart';
import 'package:t1_2020130056/second_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'images/bg.jpg',
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 56),
            decoration:
                const BoxDecoration(color: Color.fromARGB(132, 0, 0, 0)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.air,
                      color: Colors.white,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SecondPage(),
                          ),
                        );
                      },
                      child: const Text(
                        "Skip >",
                        style: TextStyle(
                          color: Color.fromARGB(58, 255, 255, 255),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Supplements",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 32,
                      ),
                    ),
                    Text(
                      "Workout plans designed to help you achive your fitness goals - wheter losing weight or building muscle",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.circle_rounded,
                          color: Color.fromARGB(255, 129, 127, 127),
                          size: 10,
                        ),
                        Icon(
                          Icons.circle,
                          color: Color.fromARGB(255, 255, 255, 255),
                          size: 10,
                        ),
                        Icon(
                          Icons.circle,
                          color: Color.fromARGB(255, 129, 127, 127),
                          size: 10,
                        ),
                        Icon(
                          Icons.circle,
                          color: Color.fromARGB(255, 129, 127, 127),
                          size: 10,
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 150.0,
                          height: 50.0,
                          child: SizedBox.expand(
                            child: OutlinedButton(
                              onPressed: () {
                                debugPrint('Received click');
                              },
                              style: OutlinedButton.styleFrom(
                                side: const BorderSide(
                                  width: 2,
                                  color: Colors.white,
                                ),
                                foregroundColor: Colors.white,
                              ),
                              child: const Text('Log In'),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 150.0,
                          height: 50.0,
                          child: SizedBox.expand(
                            child: OutlinedButton(
                              onPressed: () {
                                debugPrint('Received click');
                              },
                              style: OutlinedButton.styleFrom(
                                side: const BorderSide(
                                    width: 2, color: Colors.white),
                                foregroundColor: Colors.black,
                                backgroundColor: Colors.white,
                              ),
                              child: const Text('Sign Up'),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
