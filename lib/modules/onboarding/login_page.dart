import 'package:cots_destu/design_system/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cots_destu/modules/login/controller/login_controller.dart';

class LoginPage extends StatelessWidget {
  final LoginController _controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Centering the text and subtext
            Align(
              alignment: Alignment.center,
              child: Text(
                "Login",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: AppColors.black),
              ),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Enter your registered number to login",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ),
            SizedBox(height: 20),
            // Centering the input field
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                controller: _controller.phoneController,
                keyboardType: TextInputType.phone,
                onChanged: (value) {
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
                  prefixText: '+62 ',
                ),
                maxLength: 15,
              ),
            ),
            SizedBox(height: 20),
            // Continue button at the bottom
            Spacer(), // This pushes the button to the bottom
            ElevatedButton(
              onPressed: () {
                _controller.login();
              },
              child: Text("Continue"),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryGreen,
                foregroundColor: AppColors.white,
                minimumSize: Size(double.infinity, 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
