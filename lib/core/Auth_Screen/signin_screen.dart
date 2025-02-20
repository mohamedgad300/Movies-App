import 'package:flutter/material.dart';
import 'package:movies_app/services/custom_form_Filed.dart';

class signin extends StatefulWidget {
  signin({super.key});
  static const String routeName = "signin";

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  final List<String> items = [
    "assets/images/gamer (1) (1).png",
    "assets/images/gamer (1) (2).png",
    "assets/images/gamer (1) (3).png",
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width; //
    double buttonWidth = screenWidth * 0.95;
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Color(0xFFF6BD00)),
        centerTitle: true,
        title: Text(
          "Register",
          style: TextStyle(
            color: Color(0xFFF6BD00),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: PageView.builder(
                itemCount: items.length,
                controller: PageController(viewportFraction: 0.6),
                onPageChanged: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                itemBuilder: (context, index) {
                  bool isSelected = index == selectedIndex;
                  return AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: isSelected
                          ? [BoxShadow(color: Colors.transparent, blurRadius: 10)]
                          : [],
                    ),
                    child: Image.asset(
                      items[index],
                      width: isSelected ? 180 : 140,
                      height: isSelected ? 180 : 140,
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            CustomFormField(
              labelText: "Username",
              hintText: "Enter your Username",
              keyboardType: TextInputType.emailAddress,
              prefixIcon: Icons.perm_identity,
            ),
            SizedBox(height: 10),
            CustomFormField(
              labelText: "Email",
              hintText: "Enter your email",
              keyboardType: TextInputType.emailAddress,
              prefixIcon: Icons.email,
            ),
            CustomFormField(
              labelText: "Password",
              hintText: "Enter your password",
              isPassword: true,
              prefixIcon: Icons.lock,
              suffixIcon: Icons.visibility,
            ),
            SizedBox(height: 10),
            CustomFormField(
              labelText: "Confirm Password",
              hintText: "Enter your password",
              isPassword: true,
              prefixIcon: Icons.lock,
              suffixIcon: Icons.visibility,
            ),
            SizedBox(height: 10),
            CustomFormField(
              labelText: "Phone Number",
              hintText: "Enter your Phone Number",
              keyboardType: TextInputType.phone,
              prefixIcon: Icons.phone,
            ),
            SizedBox(height: 10),
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
              child: const Text("Create Account", style: TextStyle(color: Colors.black)),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?", style: TextStyle(color: Colors.white)),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Login", style: TextStyle(color: Color(0xFFF6BD00))),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
