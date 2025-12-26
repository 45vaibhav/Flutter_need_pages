import 'package:appp2/ProfilePage.dart';
import 'package:appp2/demo.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:Profilepage()
      );
    
  }
}
