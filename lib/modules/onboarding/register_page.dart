import 'package:cots_destu/design_system/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'login_page.dart'; // Import LoginPage for navigation

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Register')),
      body: Container(
        color: AppColors.white, // Set the background color to white
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Register", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            // Your registration fields and buttons
            ElevatedButton(
              onPressed: () {
                // Handle register logic here
              },
              child: Text("Daftar"),
              style: ElevatedButton.styleFrom(backgroundColor: AppColors.primaryGreen),
            ),
            SizedBox(height: 10),
            OutlinedButton(
              onPressed: () {
                Get.to(LoginPage()); // Navigate to the Login page
              },
              child: Text("Sudah punya akun? Masuk"),
              style: OutlinedButton.styleFrom(
                foregroundColor: AppColors.primaryGreen,
                side: BorderSide(color: AppColors.primaryGreen),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
