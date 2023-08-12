import 'package:flutter/material.dart';

class MyMobileBody extends StatelessWidget {
  const MyMobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 113, 30, 149),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("MOBILE"),
      ),
      body: Column(
        children: [
          const Text(
            "Mobile View",
            style: TextStyle(color: Colors.white, fontSize: 40),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                margin: const EdgeInsets.all(5.0),
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 234, 233, 236),
                    shape: BoxShape.rectangle),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 7,
                itemBuilder: ((context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 120,
                      color: Colors.white60,
                    ),
                  );
                })),
          )
        ],
      ),
    );
  }
}
