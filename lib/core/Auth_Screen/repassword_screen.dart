import 'package:flutter/material.dart';
import 'package:movies_app/services/custom_form_Filed.dart';

class rePassword extends StatelessWidget {
  rePassword({super.key});
  static const String routeName = "repassword";

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width; //
    double buttonWidth = screenWidth * 0.95;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Color(0xFFF6BD00)),
        centerTitle: true,
        title: Text(
          "Forget Password",
          style: TextStyle(
            color: Color(0xFFF6BD00),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView( // ✅ إضافة SingleChildScrollView
        child: Padding(
          padding: const EdgeInsets.all(16.0), // ✅ إضافة Padding لتباعد المحتوى
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/Forgot password-bro 1.png",
                width: screenWidth * 0.8, // ✅ جعل الصورة متجاوبة مع الشاشة
              ),
              SizedBox(height: 20),
              CustomFormField(
                labelText: "Email",
                hintText: "Enter your email",
                keyboardType: TextInputType.emailAddress,
                prefixIcon: Icons.email,
              ),
              SizedBox(height: 20),
              FilledButton(
                style: FilledButton.styleFrom(
                  minimumSize: Size(buttonWidth, 55),
                  backgroundColor: const Color(0xFFF6BD00),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                onPressed: () {
                  ///z/z/z/z/z/z/zz//z/z/z/z/
                },
                child: const Text("Verify Email", style: TextStyle(color: Colors.black)),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
