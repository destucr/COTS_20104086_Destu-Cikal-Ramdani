import 'package:cots_destu/design_system/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cots_destu/modules/login/controller/login_controller.dart'; // Import the controller

class LoginPage extends StatelessWidget {
  final LoginController _controller = Get.put(LoginController()); // Use GetX controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Container(
        color: AppColors.white, // Set the background color to white
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Login", 
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: AppColors.black),
            ),
            SizedBox(height: 10),
            Text(
              "Enter your registered number to login",
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _controller.phoneController, // Controller to manage phone number input
              keyboardType: TextInputType.phone,
              onChanged: (value) {
                // Manually handle the phone number
                if (value.startsWith('0')) {
                  _controller.phoneNumber.value = '+62' + value.substring(1);
                } else if (value.startsWith('+62')) {
                  _controller.phoneNumber.value = value;
                } else {
                  _controller.phoneNumber.value = value;
                }
              },
              decoration: InputDecoration(
                labelText: 'Phone Number',
                hintText: 'Enter phone number',
                border: OutlineInputBorder(),
                prefixText: '+62 ', // Default prefix for Indonesia
              ),
              maxLength: 15,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Delegate the login logic to the controller
                _controller.login();
              },
              child: Text("Login"),
              style: ElevatedButton.styleFrom(
                backgroundBuilder: AppColors.primaryGreen, 
                onPrimary : AppColors.white, 
                minimumSize: Size(double.infinity, 50), // Expand the button to fit the width
              ),
            ),
          ],
        ),
      ),
    );
  }
}
