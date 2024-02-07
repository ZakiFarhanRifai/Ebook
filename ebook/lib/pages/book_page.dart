import 'package:ebook/pages/home_page.dart';
import 'package:flutter/material.dart';

class BookPage extends StatefulWidget {
  const BookPage({super.key});

  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF14161B),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromRGBO(255, 255, 255, 0.1),
            ),
            padding: EdgeInsets.all(8),
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          // Replaced the original ElevatedButton with a new widget
          Padding(
            padding: const EdgeInsets.all(8.0), // Adjusted padding
            child: Column(
              children: [
                // Text widget for the title "Add Your Book"
                Text(
                  "Add Your Book",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18, // Adjusted font size
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8), // Adjusted spacing
                // Row of 2 images
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Image 1
                    Container(
                      padding: EdgeInsets.all(10), // Adjusted padding
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color.fromRGBO(255, 255, 255, 0.1),
                      ),
                      child: Image.asset(
                        'lib/images/book_1.png', // Replace with your image asset
                        height: 100, // Adjusted image height
                        width:
                            100, // Added width to make images have the same size
                      ),
                    ),
                    // Image 2
                    Container(
                      padding: EdgeInsets.all(10), // Adjusted padding
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color.fromRGBO(255, 255, 255, 0.1),
                      ),
                      child: Image.asset(
                        'lib/images/hary_potter.jpg', // Replace with your image asset
                        height: 100, // Adjusted image height
                        width:
                            100, // Added width to make images have the same size
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8), // Adjusted spacing
                // Row of 2 image titles
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Image 1 Title",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12), // Adjusted font size
                    ),
                    Text(
                      "Image 2 Title",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12), // Adjusted font size
                    ),
                  ],
                ),
                SizedBox(height: 8), // Adjusted spacing
                // Row of 2 images
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Image 1
                    Container(
                      padding: EdgeInsets.all(10), // Adjusted padding
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color.fromRGBO(255, 255, 255, 0.1),
                      ),
                      child: Image.asset(
                        'lib/images/book_1.png', // Replace with your image asset
                        height: 100, // Adjusted image height
                        width:
                            100, // Added width to make images have the same size
                      ),
                    ),
                    // Image 2
                    Container(
                      padding: EdgeInsets.all(10), // Adjusted padding
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color.fromRGBO(255, 255, 255, 0.1),
                      ),
                      child: Image.asset(
                        'lib/images/hary_potter.jpg', // Replace with your image asset
                        height: 100, // Adjusted image height
                        width:
                            100, // Added width to make images have the same size
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8), // Adjusted spacing
                // Row of 2 image titles
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Image 1 Title",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12), // Adjusted font size
                    ),
                    Text(
                      "Image 2 Title",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12), // Adjusted font size
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
