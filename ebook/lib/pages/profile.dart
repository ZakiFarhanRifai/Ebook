import 'package:ebook/pages/account_page.dart';
import 'package:ebook/pages/detail_page.dart';
import 'package:ebook/pages/home_page.dart';
import 'package:ebook/pages/nightmode.dart';
import 'package:ebook/pages/reset_password.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
            // Handle back button press
          },
        ),
        title: Text("Profile"),
        centerTitle: true, // Center the title
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Your page content goes here

            // Circular element above AppBar
            Container(
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white, // Set the desired color
              ),
              // Add any content inside the circular element if needed
            ),

            SizedBox(height: 10.0),

            // Text user.email below the circle
            Text(
              user.email!,
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.0),
            Container(
              width: 380.0,
              height: 60.0,
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: InkWell(
                onTap: () {
                  // Tambahkan fungsionalitas yang diinginkan saat persegi panjang ditekan
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AccountPage()),
                  );
                },
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.start, // Align children at the start
                  children: [
                    // Placeholder with profile icon on the left
                    Icon(
                      Icons.account_circle,
                      size: 30.0,
                      color: Colors.grey,
                    ),
                    SizedBox(
                        width:
                            10.0), // Add spacing between CircleAvatar and Text
                    // Text "Account" to the right of the CircleAvatar
                    Text("Account"),
                    SizedBox(width: 244.0),
                    // Right arrow icon on the right
                    Icon(Icons.arrow_forward),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              width: 380.0,
              height: 60.0,
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: InkWell(
                onTap: () {
                  // Tambahkan fungsionalitas yang diinginkan saat persegi panjang ditekan
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResetPasswordPage()),
                  );
                },
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.start, // Align children at the start
                  children: [
                    // Placeholder with profile icon on the left
                    Icon(
                      Icons.vpn_key,
                      size: 30.0,
                      color: Colors.grey,
                    ),
                    SizedBox(
                        width:
                            10.0), // Add spacing between CircleAvatar and Text
                    // Text "Account"9 to the right of the CircleAvatar
                    Text("Reset Password"),
                    SizedBox(width: 194.0),
                    // Right arrow icon on the right
                    Icon(Icons.arrow_forward),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              width: 380.0,
              height: 60.0,
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.start, // Align children at the start
                children: [
                  // Placeholder with profile icon on the left
                  Icon(
                    Icons.language,
                    size: 30.0,
                    color: Colors.grey,
                  ),
                  SizedBox(
                      width: 10.0), // Add spacing between CircleAvatar and Text
                  // Text "Account"9 to the right of the CircleAvatar
                  Text("select a language"),
                  SizedBox(width: 185.0),
                  // Right arrow icon on the right
                  Icon(Icons.arrow_forward),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              width: 380.0,
              height: 60.0,
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: InkWell(
                onTap: () {
                  // Tambahkan fungsionalitas yang diinginkan saat persegi panjang ditekan
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NightModePage()),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Placeholder with profile icon on the left
                    Icon(
                      Icons.wb_sunny_outlined,
                      size: 30.0,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 10.0),
                    // Text "night mode" to the right of the profile icon
                    Text("night mode"),
                    SizedBox(width: 200.0),
                    // Right arrow icon on the right
                    Icon(Icons.arrow_forward),
                  ],
                ),
              ),
            ),

            SizedBox(height: 20.0),
            Container(
              width: 380.0,
              height: 60.0,
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: InkWell(
                onTap: () {
                  // Tambahkan fungsionalitas yang diinginkan saat persegi panjang ditekan
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DetailPage()),
                  );
                },
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.start, // Align children at the start
                  children: [
                    // Placeholder with profile icon on the left
                    Icon(
                      Icons.info,
                      size: 30.0,
                      color: Colors.grey,
                    ),
                    SizedBox(
                        width:
                            10.0), // Add spacing between CircleAvatar and Text
                    // Text "Account"9 to the right of the CircleAvatar
                    Text("Detail"),
                    SizedBox(width: 250.0),
                    // Right arrow icon on the right
                    Icon(Icons.arrow_forward),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              width: 380.0,
              height: 60.0,
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.start, // Align children at the start
                children: [
                  // Placeholder with profile icon on the left
                  Icon(
                    Icons.logout,
                    size: 30.0,
                    color: Colors.grey,
                  ),
                  SizedBox(
                      width: 10.0), // Add spacing between CircleAvatar and Text
                  // Text "Account"9 to the right of the CircleAvatar
                  Text("LOGOUT"),
                  SizedBox(width: 230.0),
                  // Right arrow icon on the right
                  Icon(Icons.arrow_forward),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
