import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          flagVietNam(),
          greedy(Colors.green, Colors.white, "Xin chao DHKH"),
          greedy(Colors.red, Colors.white, "Xin chao Mobile G3"),
          greedy(Colors.yellow, Colors.white, "Xin chao cac ban"),
        ],
      ),
    );
  }

  Widget flagVietNam() {
    return Container(
      height: 300,
      margin: const EdgeInsets.all(20),
      decoration: const BoxDecoration(color: Colors.red),
      child: const Icon(
        Icons.star,
        color: Colors.yellow,
        size: 200,
      ),
    );
  }

  Widget greedy(Color bg, Color fg, String str) {
    return Container(
        height: 300,
        margin: const EdgeInsets.all(20),
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(10), color: bg),
        child: Center(
            child: Text(
          str,
          style: TextStyle(color: fg, fontSize: 40),
        )));
  }
}
