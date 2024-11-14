import 'package:flutter/material.dart';

class MyGmail extends StatelessWidget {
  MyGmail({super.key});
  String avtURL =
      "https://images.unsplash.com/photo-1727466443068-779e1f8fe8e8?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fGRyYWdvbiUyMGJhbGwlMjB6fGVufDB8fDB8fHww";
  String avtURL2 =
      "https://images.unsplash.com/photo-1608133012729-7c76e221449c?q=80&w=1984&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D";
  String content =
      "Không ai bên ngoài tổ chức của bạn có thể tham gia cuộc họp trừ phi người tổ chức mới hoặc cho phép";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(
            Icons.call,
            color: Colors.blue,
          ),
        ),
        drawer: MyDrawer(context),
        appBar: MyAppBar(),
        bottomNavigationBar: MyBottom(),
        body: Column(
          children: [
            MyRow(),
            Expanded(
              child: PageView(
                children: [MyItem(avtURL), MyItem(avtURL2)],
              ),
            ),
            MyIndicator(1, 2)
          ],
        ));
  }

  MyIndicator(int currentIndex, int length) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(length, (index) {
          double sizeIndicator = 5;
          return Container(
              margin: const EdgeInsets.all(1),
              height: sizeIndicator,
              width: sizeIndicator,
              decoration: BoxDecoration(
                  color: currentIndex == index ? Colors.blue : Colors.grey,
                  shape: BoxShape.circle));
        }),
      ),
    );
  }

  MyBottom() {
    return BottomNavigationBar(
      currentIndex: 1,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.email), label: "Email"),
        BottomNavigationBarItem(icon: Icon(Icons.message), label: "Message"),
        BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt_outlined), label: "Meet"),
      ],
    );
  }

  MyDrawer(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 2 / 3,
      color: Colors.white,
      child: ListView(
        children: [
          const Text(
            "Google Classroom",
            style: TextStyle(fontSize: 20),
          ),
          const Divider(),
          const Text("Đang giảng dạy"),
          const SizedBox(
            height: 10,
          ),
          for (int i = 0; i < 8; i++)
            Container(
              margin: const EdgeInsets.only(left: 7, bottom: 15),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.red),
                    child: const Center(child: Text("L")),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Lập trình ứng dụng di động"),
                      Text("2024-2025")
                    ],
                  )
                ],
              ),
            ),
          const Divider(),
          Container(
            margin: const EdgeInsets.only(left: 5),
            child: const Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.settings_outlined),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Cài đặt")
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(Icons.download_for_offline_outlined),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Lớp học đã lưu trữ")
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(Icons.help_center_outlined),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Trợ giúp")
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  MyAppBar() {
    return AppBar(
      title: const Center(child: Text("Họp mặt")),
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 20),
          height: 20,
          width: 20,
          decoration: const BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1606663889134-b1dedb5ed8b7?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8ZHJhZ29uJTIwYmFsbCUyMHp8ZW58MHx8MHx8fDA%3D"),
                  fit: BoxFit.cover)),
        )
      ],
    );
  }

  MyItem(String url) {
    return Expanded(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
              image:
                  DecorationImage(image: NetworkImage(url), fit: BoxFit.cover)),
        ),
        const Text(
          "Cuộc họp luôn an toàn",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          content,
          textAlign: TextAlign.center,
        )
      ],
    ));
  }

  MyRow() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(20)),
            child: const Text(
              "Cuộc họp mới",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey)),
            child: const Text(
              "Tham gia cuộc họp",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
