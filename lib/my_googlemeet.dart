import 'package:flutter/material.dart';

class MyGooglemeet extends StatelessWidget {
  const MyGooglemeet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
    );
  }
}

AppBar myAppBar() {
  return AppBar(
    leading: IconButton(
      onPressed: () {},
      icon: const Icon(
        Icons.menu,
        color: Colors.black,
      ),
    ),
    title: const Text(
      "Họp mặt",
      style: TextStyle(color: Colors.black),
    ),
    actions: [
      IconButton(
          onPressed: () {}, icon: const Icon(Icons.account_circle_rounded))
    ],
  );
}

Widget bottom() {
  return const SizedBox(
    height: 100,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.mail_outline),
        Icon(Icons.question_answer),
        Icon(Icons.camera)
      ],
    ),
  );
}
