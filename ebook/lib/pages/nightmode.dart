import 'package:ebook/pages/profile.dart';
import 'package:flutter/material.dart';

class NightModePage extends StatefulWidget {
  const NightModePage({super.key});

  @override
  State<NightModePage> createState() => _NightModePageState();
}

class _NightModePageState extends State<NightModePage> {
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
        title: Text('Night Mode'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 20), // Add space above rectangles
          _buildRectangle('Aktif', Colors.transparent),
          _buildRectangle('Nonaktif', Colors.transparent),
          _buildRectangle('Otomatis', Colors.transparent),
        ],
      ),
    );
  }

  Widget _buildRectangle(String text, Color color) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: Colors.black), // Add border for visibility
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.black, // Set text color to black
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
