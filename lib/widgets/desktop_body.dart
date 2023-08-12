import 'package:flutter/material.dart';

class MyDeskTopView extends StatelessWidget {
  const MyDeskTopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 93, 47, 185),
      appBar: AppBar(
        centerTitle: false,
        title: const Text("Desktop"),
      ),
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              children: [
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
                            height: 80,
                            color: Colors.white60,
                          ),
                        );
                      })),
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                      height: 250,
                      width: 250,
                      color: Colors.pink[300],
                      child: const Placeholder()),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 12,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8),
                        child: Container(
                          height: 70,
                          color: Colors.white,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
