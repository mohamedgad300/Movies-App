import 'package:flutter/material.dart';
import '../../services/custom_form_Filed.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static const String routeName = "login";

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width; // عرض الشاشة
    double buttonWidth = screenWidth * 0.95; // تحديد عرض الزر ليكون 95% من عرض الشاشة

    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05), // هوامش جانبية 5%
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              Center(child: Image.asset("assets/images/logo.png", width: screenWidth * 0.6)),
              const SizedBox(height: 20),

              CustomFormField(
                labelText: "Email",
                hintText: "Enter your email",
                keyboardType: TextInputType.emailAddress,
                prefixIcon: Icons.email,
              ),
              const SizedBox(height: 20),

              CustomFormField(
                labelText: "Password",
                hintText: "Enter your password",
                isPassword: true,
                prefixIcon: Icons.lock,
                suffixIcon: Icons.visibility,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Forget Password?",
                    style: TextStyle(color: Color(0xFFF6BD00)),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              FilledButton(
                style: FilledButton.styleFrom(
                  minimumSize: Size(buttonWidth, 55), // جعل الزر 95% من عرض الشاشة
                  backgroundColor: const Color(0xFFF6BD00),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                onPressed: () {},
                child: const Text("Login", style: TextStyle(color: Colors.black)),
              ),
              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?", style: TextStyle(color: Colors.white)),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Create one",
                      style: TextStyle(color: Color(0xFFF6BD00)),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Divider(
                      color: const Color(0xFFF6BD00),
                      indent: 30,
                      thickness: 1,
                      endIndent: 10,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "OR",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Flexible(
                    child: Divider(
                      color: const Color(0xFFF6BD00),
                      endIndent: 30,
                      thickness: 1,
                      indent: 10,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              FilledButton(
                style: FilledButton.styleFrom(
                  minimumSize: Size(buttonWidth, 55), // جعل الزر 95% من عرض الشاشة
                  backgroundColor: const Color(0xFFF6BD00),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.g_mobiledata_outlined, color: Colors.black),
                    const SizedBox(width: 10),
                    const Text("Login with Google", style: TextStyle(color: Colors.black)),
                  ],
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
