import 'package:flutter/material.dart';
import 'package:movies_app/core/Auth_Screen/Login_screen.dart';
import 'package:movies_app/screens/Home_screen/home_screen.dart';

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
              padding: const EdgeInsets.symmetric(horizontal: 16),
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
                        Navigator.of(context).pushReplacementNamed(LoginScreen.routeName);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFF6BD00), // اللون المطلوب
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
                        Navigator.of(context).pop();
                      },
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(
                          color: Color(0xFFF6BD00),
                          width: 2,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        'Back',
                        style: TextStyle(
                          color: Color(0xFFF6BD00),
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
