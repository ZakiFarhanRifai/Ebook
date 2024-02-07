import 'package:ebook/pages/auth_page.dart';
import 'package:ebook/pages/intro_page.dart'; // Added import for intro_page.dart
import 'package:ebook/pages/language_menu.dart';
import 'package:ebook/pages/nightmode.dart';
import 'package:ebook/pages/profile.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // Fixed the key parameter

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.orange,
      ),
      initialRoute: '/intro', // Set the initial route to intro page
      routes: {
        '/intro': (context) => IntroPage(),
        '/languagepage': (context) =>
            LanguagePage(), // Added route for intro page
        '/auth': (context) => AuthPage(),
        '/profile': (context) => ProfilePage(),
        '/nightmode': (context) => NightModePage(),
      },
    );
  }
}
