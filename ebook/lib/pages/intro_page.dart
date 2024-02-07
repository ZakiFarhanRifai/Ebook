import 'package:ebook/components/button.dart';
import 'package:ebook/pages/auth_page.dart';
import 'package:ebook/pages/language_menu.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF14161B),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(height: 55),

          // icon
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 400, // Sesuaikan lebar dan tinggi lingkaran
                height: 330,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                      160), // Setengah dari lebar/tinggi untuk lingkaran
                  color: Color(0x05EC8A54), // Warna lingkaran pertama
                ),
              ),
              Container(
                width: 250, // Sesuaikan lebar dan tinggi lingkaran
                height: 230,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                      120), // Setengah dari lebar/tinggi untuk lingkaran
                  color: Color.fromRGBO(
                      236, 138, 84, 0.1), // Warna lingkaran kedua
                ),
              ),
              Positioned(
                left: 55, // Sesuaikan posisi lingkaran kecil kiri bawah
                bottom: 20, // Sesuaikan posisi lingkaran kecil kiri bawah
                child: Container(
                  width: 20, // Sesuaikan lebar dan tinggi lingkaran kecil
                  height: 20,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFE76C00), // Warna lingkaran kecil
                  ),
                ),
              ),
              Positioned(
                right: 55, // Sesuaikan posisi lingkaran kecil kanan atas
                top: 20, // Sesuaikan posisi lingkaran kecil kanan atas
                child: Container(
                  width: 20, // Sesuaikan lebar dan tinggi lingkaran kecil
                  height: 20,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFE76C00), // Warna lingkaran kecil
                  ),
                ),
              ),
              Positioned(
                bottom: -30, // Sesuaikan jarak ke bawah yang diinginkan
                child: Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Image.asset('lib/images/book_1.png'),
                ),
              ),
            ],
          ),

          const SizedBox(height: 55),

          // title
          Text(
            "Learn language easily with books",
            textAlign: TextAlign.center,
            style: GoogleFonts.dmSerifDisplay(
              fontSize: 35,
              color: Colors.white,
            ),
          ),

          const SizedBox(height: 10),

          // subtitle
          Text(
            "Read favorite books in their original language with parallel translation",
            textAlign: TextAlign.center,
            style: TextStyle(
              height: 3,
              color: Color(0xFF83899F),
              fontSize: 16,
            ),
          ),

          const SizedBox(height: 27),

          MyButton(
            text: "Get started",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LanguagePage()),
              );
            },
          )

          // get started button
        ]),
      ),
    );
  }
}
