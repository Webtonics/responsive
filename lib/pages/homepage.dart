import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    // final color = TextStyle(color: Colors.black);
    String text = "Available";
    if (screenWidth < 500) {
      text = "Not available for your device screen size";
    }

    return Scaffold(
      backgroundColor: screenWidth < 400 ? Colors.black : Colors.blue,
      body: Column(
        children: [
          Center(
            child: Text(
              screenWidth.toString(),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            text,
            style: const TextStyle(fontSize: 24),
          )
        ],
      ),
    );
  }
}
