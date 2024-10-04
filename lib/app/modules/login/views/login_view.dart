import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:massenger_app3/app/routes/app_pages.dart';
import '../controllers/login_controller.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; // Get the size of the screen
    double padding = size.width * 0.05; // Dynamic padding based on screen width
    // Get screen width and height using MediaQuery
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Define responsive font sizes and image sizes
    final double textFontSize = screenWidth * 0.06; // 6% of screen width
    final double currentLogoSize = screenWidth * 0.15; // Current logo size (15% of screen width)
    final double newLogoSize = currentLogoSize * 0.6; // New logo size (60% of current logo size)
    
    return Scaffold(
      backgroundColor: Color(0xFFF4F4FB),
      body: SafeArea(
        
        child: Stack(
        
          children: [
            // Background Circle
            Positioned(
              top: -146,
              left: -202,
              child: Container(
                width: size.width * 1.5, // Responsive width
                height: size.width * 1.5 * (407 / 588), // Maintain aspect ratio
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            // Main Content
            Padding(
              padding: EdgeInsets.all(padding),
              child: Column(
                children: [
                  // Expanded widget to push content to the top
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome to',
                          style: TextStyle(
                            fontSize: size.width * 0.06, // Responsive font size
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'MessageMind',
                          style: TextStyle(
                            fontSize: size.width * 0.08, // Responsive font size
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 140),
                        Text(
                          'Sign In',
                          style: TextStyle(
                            fontSize: size.width * 0.06, // Responsive font size
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Enter your email or password to login.',
                          style: TextStyle(
                            fontSize: size.width * 0.04, // Responsive font size
                            color: Colors.grey[600],
                          ),
                        ),
                        const SizedBox(height: 30),
                        Text(
                          "Email",
                          style: TextStyle(color: Colors.pink),
                        ),
                        TextField(
                          obscureText: false, // This is for email
                          decoration: InputDecoration(
                            hintText: "abc@gmail.com", // Placeholder text
                            hintStyle: TextStyle(color: Colors.grey), // Placeholder style
                            labelStyle: TextStyle(color: Colors.pink),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10), // Rounded rectangle shape
                              borderSide: BorderSide(color: Colors.pink), // Border color
                            ),
                            filled: true, // Fill background
                            fillColor: Colors.white, // Background color
                            suffixIcon: Icon(
                              Icons.smartphone_sharp,
                              color: Colors.pink,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "Password",
                          style: TextStyle(color: Colors.pink),
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "**********", // Placeholder text
                            hintStyle: TextStyle(color: Colors.grey), // Placeholder style
                            labelStyle: TextStyle(color: Colors.pink),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10), // Rounded rectangle shape
                              borderSide: BorderSide(color: Colors.pink), // Border color
                            ),
                            filled: true, // Fill background
                            fillColor: Colors.white, // Background color
                            suffixIcon: Icon(
                              Icons.lock,
                              color: Colors.pink,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Center(
                       child: ElevatedButton(
  onPressed: () {
    // Navigate to LoadingView
    Get.toNamed(Routes.LOADING);
  },
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.pink, // Background color
    padding: EdgeInsets.symmetric(vertical: 15), // Keep vertical padding
    minimumSize: Size(double.infinity, 56), // Width to infinity, height matches TextField height
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10), // Border radius
    ),
  ),
  child: const Text(
    'Sign In',
    style: TextStyle(color: Colors.white, fontSize: 18),
  ),
),

                        ),
                      ],
                    ),
                  ),
                  // RichText moved to the bottom
                  Center(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(color: Colors.grey[600]), // Default text color
                        children: <TextSpan>[
                          TextSpan(text: "Don't have an account? "),
                          TextSpan(
                            text: "Sign up",
                            style: TextStyle(color: Colors.pink), // Color for "Sign up"
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20), // Small spacing at the bottom
                ],
              ),
            ),
            // Stack for logos positioned at the right corner
            Positioned(
              right: -40, // Adjust the position as needed
              top: -20, // Adjust the position as needed
              child: Stack(
                alignment: Alignment.center, // Center the new logo on top of the background logo
                children: [
                  Image.asset(
                    'assets/background_logo.png', // Background logo
                    width: currentLogoSize * 3.5, // Increase the size by 1.5 times
                    height: currentLogoSize * 3.5, // Increase the size by 1.5 times
                  ),
                  Image.asset(
                    'assets/top_logo.png', // Foreground logo
                    width: currentLogoSize * 3.5, // Increase the size by 1.5 times
                    height: currentLogoSize * 3.5, // Increase the size by 1.5 times
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
} 