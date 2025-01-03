import 'package:cots_destu/design_system/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart'; // Import GetX package

class OnboardingPage extends StatefulWidget {
  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController();
  int _currentPage = 0; // To track which page is currently displayed

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index; // Update current page when swipe occurs
                });
              },
              children: [
                buildOnboardingSlide(
                  "assets/images/onboarding_1.png",
                  "Selamat datang di Gojek!",
                  "Aplikasi yang bikin hidupmu lebih nyaman. Siap bantuin semua kebutuhan mu, kapanpun, dan di manapun",
                ),
                buildOnboardingSlide(
                  "assets/images/onboarding_2.png",
                  "Lorem Ipsum Dolor Sit Amet",
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                ),
                buildOnboardingSlide(
                  "assets/images/onboarding_3.png",
                  "Lorem Ipsum Dolor Sit Amet",
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                ),
              ],
            ),
          ),
          buildDotIndicator(),
          buildBottomNavigation(),
        ],
      ),
    );
  }

  Widget buildOnboardingSlide(String imagePath, String title, String subtext) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(imagePath, height: 300),
        SizedBox(height: 20),
        Text(
          title,
          style: TextStyle(
            fontFamily: 'SFProText',
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10),
        Text(
          subtext,
          style: TextStyle(
            fontFamily: 'SFProText',
            fontSize: 16,
            color: Colors.black54,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget buildBottomNavigation() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end, // Align at the bottom
        children: [
          SizedBox(
            width: double.infinity, // Makes button as wide as possible
            child: ElevatedButton(
              onPressed: () {
                // Navigate to Login page
                Get.to(LoginPage());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors
                    .primaryGreen, // Set the button color to primary green
              ),
              child: Text("Masuk"),
            ),
          ),
          SizedBox(height: 10), // Space between buttons
          SizedBox(
            width: double.infinity, // Makes button as wide as possible
            child: OutlinedButton(
              onPressed: () {
                // Navigate to Register page
                Get.to(RegisterPage());
              },
              child: Text("Belum ada akun?, Daftar dulu"),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDotIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        3, // Total number of slides
        (index) => Padding(
          padding: const EdgeInsets.all(4.0),
          child: AnimatedContainer(
            duration: Duration(milliseconds: 200),
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: _currentPage == index
                  ? Colors.green // Active color
                  : Colors.grey, // Inactive color
            ),
          ),
        ),
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login', style: TextStyle(fontFamily: 'SFProText')),
      ),
      body: Center(
        child: Text(
          'Login Page',
          style: TextStyle(
              fontFamily: 'SFProText',
              fontWeight: FontWeight.w500,
              fontSize: 22),
        ),
      ),
    );
  }
}

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register', style: TextStyle(fontFamily: 'SFProText')),
      ),
      body: Center(
        child: Text(
          'Register Page',
          style: TextStyle(
              fontFamily: 'SFProText',
              fontWeight: FontWeight.w500,
              fontSize: 22),
        ),
      ),
    );
  }
}
