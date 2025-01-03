import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white, // White background for AppBar
        elevation: 10, // Adds a shadow to the AppBar
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Search Bar with white background and inset shadow
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12),
              width: 200,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white, // White background for the search form
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                  boxShadow: [
                    BoxShadow(
                      color:
                          Colors.black.withOpacity(0.1), // Inset shadow color
                      offset: Offset(0, 2),
                      blurRadius: 6,
                    ),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search, color: Colors.grey),
                    border: InputBorder.none, // Remove default border
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 5, horizontal: 2),
                  ),
                ),
              ),
            ),
            // Profile Icon (you can replace with PNG later)
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.grey,
              child: Icon(Icons.person, color: Colors.white),
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.white, // Body background color
        child: Column(
          children: [
            const SizedBox(height: 20), // Space between AppBar and rectangle
            Center(
              child: Container(
                padding: const EdgeInsets.all(
                    20), // Increase padding for larger size
                decoration: BoxDecoration(
                  color: Colors.blue, // Primary blue color
                  borderRadius: BorderRadius.circular(15), // Rounded corners
                ),
                child: const Text(
                  "Centered Content",
                  style: TextStyle(
                    color: Colors.white, // White text
                    fontSize: 22, // Larger font size
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
