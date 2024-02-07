import 'package:ebook/pages/home_page.dart';
import 'package:ebook/pages/profile.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
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
        title: Text('EDIT ACCOUNT'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(labelText: 'Enter first name'),
                  ),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(labelText: 'Enter last name'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16), // Adding space between the rows
            TextField(
              decoration: InputDecoration(labelText: 'Enter username'),
            ),
            SizedBox(height: 16), // Adding space between the rows
            TextField(
              decoration: InputDecoration(labelText: 'Enter email'),
            ),
            SizedBox(height: 16), // Adding space between the rows
            TextField(
              decoration: InputDecoration(labelText: 'Enter phone number'),
            ),
            SizedBox(height: 16), // Adding space between the rows
            TextField(
              decoration: InputDecoration(labelText: 'Enter Gender'),
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
