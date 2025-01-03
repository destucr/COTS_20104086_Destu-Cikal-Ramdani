import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cots_destu/modules/home/home_page.dart';

class LoginController extends GetxController {
  var phoneNumber = ''.obs; // Observable to track phone number
  TextEditingController phoneController = TextEditingController(); // TextEditingController for phone input

  // Dummy phone number for successful login
  final String validPhoneNumber = '+62123';

  // Method to handle login
  void login() {
    // Check if the phone number is valid (start with +62 or 0)
    if (phoneNumber.isNotEmpty) {
      if (phoneNumber.value.startsWith('+62') || phoneNumber.value.startsWith('0')) {
        // Simulate checking the phone number (replace this with your real authentication logic)
        if (phoneNumber.value == validPhoneNumber) {
          // If login is successful, navigate to homepage and show success snackbar
          Get.offAll(HomePage()); // Navigate to HomePage and clear the login page from stack
          Get.snackbar('Login Success', 'You have successfully logged in',
              snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.green, colorText: Colors.white);
        } else {
          // Show error if phone number doesn't match the dummy number
          Get.snackbar('Login Failed', 'Invalid phone number',
              snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.red, colorText: Colors.white);
        }
      } else {
        // Show error if the phone number doesn't start with +62 or 0
        Get.snackbar('Invalid Phone Number', 'Please enter a valid number starting with +62 or 0',
            snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.orange, colorText: Colors.white);
      }
    } else {
      // Show error if phone number is empty
      Get.snackbar('Error', 'Please enter a phone number',
          snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.red, colorText: Colors.white);
    }
  }
}
