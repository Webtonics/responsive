import 'package:flutter/material.dart';

class MyTabletBody extends StatelessWidget {
  const MyTabletBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 43, 121, 46),
      appBar: AppBar(
        centerTitle: false,
        title: const Text("Tablet"),
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
                            height: 120,
                            color: Colors.white60,
                          ),
                        );
                      })),
                )
              ],
            ),
          ),
          //Latest Movies
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(19.0),
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 70,
                      width: 60,
                      margin: EdgeInsets.symmetric(horizontal: 9, vertical: 5),
                      color: const Color.fromARGB(255, 241, 242, 246),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
