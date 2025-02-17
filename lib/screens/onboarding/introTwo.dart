import 'package:flutter/material.dart';

class Introtwo extends StatelessWidget {
  const Introtwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // الخلفية
          Positioned.fill(
            child: Image.asset(
              'assets/images/introTwo.png',
              fit: BoxFit.fill,
            ),
          ),

          // المحتوى
          Positioned(
            left: 0,
            right: 0,
            bottom: 20, // إبعاد الـ Container عن الأسفل بمقدار 20 بكسل
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16), // هوامش جانبية
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Discover Movies',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10), // مسافة بين النصوص
                  Text(
                    'Explore a vast collection of movies in all qualities and genres. Find your next favorite film with ease.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.6),
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 20), // مسافة قبل الزرار
                  SizedBox(
                    width: 350,
                    height: 55,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed("IntroThree");
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color(0xFFF6BD00), // اللون المطلوب
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        'Next',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
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
    );
  }
}
