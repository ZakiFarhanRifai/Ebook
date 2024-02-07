import 'package:ebook/pages/profile.dart';
import 'package:flutter/material.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({super.key});

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfilePage()),
            );
            // Handle back button press
          },
        ),
        title: Text('Reset Password'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 16), // Adding space between the rows
            TextField(
              decoration: InputDecoration(labelText: 'Enter password old'),
            ),
            SizedBox(height: 16), // Adding space between the rows
            TextField(
              decoration: InputDecoration(labelText: 'Enter password new'),
            ),
            SizedBox(height: 16), // Adding space between the rows
            TextField(
              decoration:
                  InputDecoration(labelText: 'Enter password new again'),
            ),
            SizedBox(height: 16), // Adding space between the rows
            ElevatedButton(
              onPressed: () {
                // Add functionality for the Save button
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF8C31FF), // Background color #8C31FF
              ),
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
