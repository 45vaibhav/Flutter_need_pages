import 'package:flutter/material.dart';

class Profilepage extends StatefulWidget {
  const Profilepage({super.key});

  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Container(
            height: 80,
            width: double.infinity,
            color: Colors.blueAccent,
            child: Row(
              children: [
                  Icon(Icons.arrow_back, color: Colors.white, size: 26),
                Text("Profile")
              ],
            ),
          ),
          Container(
              height: 300,
              width: 400,
              color: Colors.greenAccent,
              
          )
        ],
      ) ,
    );
  }
}