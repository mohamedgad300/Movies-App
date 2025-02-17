import 'package:flutter/material.dart';

class Introsix extends StatelessWidget {
  const Introsix({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // الخلفية
          Positioned.fill(
            child: Image.asset(
              'assets/images/introSix.png',
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
                    'Start Watching Now',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 20), // مسافة قبل الزرار
                  SizedBox(
                    width: 350,
                    height: 55,
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigator.of(context).pushNamed("IntroSix");
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color(0xFFF6BD00), // اللون المطلوب
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        'Finish',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10), // مسافة قبل الزرار
                  SizedBox(
                    width: 350,
                    height: 55,
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.of(context).pop("IntroFive");
                      },
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(
                          color: Color(0xFFF6BD00), // لون الـ Stroke
                          width: 2, // سمك الخط
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(10), // الزوايا الدائرية
                        ),
                      ),
                      child: Text(
                        'Back',
                        style: TextStyle(
                          color:
                              Color(0xFFF6BD00), // لون النص نفس لون الـ Stroke
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
