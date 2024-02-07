import 'package:ebook/pages/profile.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
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
        title: Text('Detail'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 16), // Adding space between the rows
            TextField(
              decoration: InputDecoration(labelText: 'Ebook'),
            ),
            SizedBox(height: 16), // Adding space between the rows
            TextField(
              decoration: InputDecoration(labelText: 'Versi'),
            ),
            SizedBox(height: 16), // Adding space between the rows
            TextField(
              decoration: InputDecoration(labelText: 'Kebijakan Privasi'),
            ),
            SizedBox(height: 16), // Adding space between the rows
            TextField(
              decoration: InputDecoration(labelText: 'Kode etik'),
            ),
            SizedBox(height: 16), // Adding space between the rows
            TextField(
              decoration: InputDecoration(labelText: 'Pedoman Konten'),
            ),
            SizedBox(height: 16), // Adding space between the rows
            TextField(
              decoration: InputDecoration(labelText: 'Lisensi'),
            ),
          ],
        ),
      ),
    );
  }
}
