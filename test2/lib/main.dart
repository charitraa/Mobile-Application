import 'package:flutter/material.dart';
import 'package:test2/pages/ChatApp/Conversation.dart';
import 'package:test2/pages/ChatApp/Home.dart';
import 'package:test2/pages/mapclass.dart';
import './pages/ChatApp/loginpage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Ensures Flutter is fully initialized
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LoginWidget(), // Ensure Login is a Widget class
    );
  }
}
