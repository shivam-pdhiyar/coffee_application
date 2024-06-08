import 'package:flutter/material.dart';
import 'home_page.dart';

class OnBordingPage extends StatefulWidget {
  const OnBordingPage({super.key});

  @override
  State<OnBordingPage> createState() => _OnBordingPageState();
}

class _OnBordingPageState extends State<OnBordingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/coffee.png'),
                  fit: BoxFit.cover,
              ),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFffffff),
                  Color(0xFF000000),
                  Color(0xFF000000),
                  Color(0xFF000000),
                  Color(0xFF000000),
                ],
              ),
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  const SizedBox(
                    height: 400,
                  ),
                  SizedBox(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: Container(
                        height: 400,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 40,
                            ),
                            const Text(
                              "Coffee so good,",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.w700,
                              ),
                            ),
                            const Text(
                              "your taste buds",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.w700,
                              ),
                            ),
                            const Text(
                              "will love it.",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.w700,
                              ),
                            ),
                            const Text(
                              "The best grain, the finest roast,",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  color: Colors.grey,
                              ),
                            ),
                            const Text(
                              "the powerful flavor.",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  color: Colors.grey,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const HomePage(),
                                  ),
                                );
                              },
                              child: Container(
                                height: 50,
                                width: 300,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: const Color(0xFFC67C4E),
                                ),
                                child: const Center(
                                  child: Text(
                                    "Get Started",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
