import 'package:flutter/material.dart';

class MyPlace extends StatelessWidget {
  const MyPlace({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [Banner(), Header(), ListFunctions(), TextContent()],
        ),
      ),
    );
  }
}

Widget Banner() {
  return (Container(
    width: 200,
    height: 200,
    decoration: const BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                'https://myasgeographyaqa.wordpress.com/wp-content/uploads/2016/09/paris-at-night.jpg?w=1400'),
            fit: BoxFit.cover)),
  ));
}

Widget Header() {
  return Container(
    color: Colors.white,
    child: Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          // First Column (80% width)
          Expanded(
            flex: 8, // 80% of the width
            child: Container(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Oeschinen Lake Campground',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 0, 8),
                    child: Text(
                      'Kandersteg, Switzerland',
                      style: TextStyle(color: Colors.grey[700], fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Second Column (20% width)
          Expanded(
            flex: 2, // 20% chiều rộng
            child: Container(
              color: Colors.white,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center, // Căn giữa
                children: [
                  Icon(
                    Icons.star, // Biểu tượng ngôi sao
                    color: Colors.red,
                  ),
                  SizedBox(width: 8), // Khoảng cách giữa biểu tượng và số
                  Text(
                    '41',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget ListFunctions() {
  return Container(
    color: Colors.white,
    child: Padding(
      padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.spaceBetween, // Căn giữa với khoảng cách đều
        children: [
          // Cột thứ nhất
          Container(
            width: 80, // Đặt chiều rộng cụ thể
            height: 80,
            color: Colors.white,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center, // Căn giữa
              children: [
                Icon(
                  Icons.phone, // Biểu tượng điện thoại
                  color: Colors.blue,
                ),
                Text(
                  'CALL',
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ),
          // Cột thứ hai
          Container(
            width: 80, // Đặt chiều rộng cụ thể
            height: 80,
            color: Colors.white,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center, // Căn giữa
              children: [
                Icon(
                  Icons.route, // Biểu tượng điện thoại
                  color: Colors.blue,
                ),
                Text(
                  'ROUTE',
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ),
          // Cột thứ ba
          Container(
            width: 80, // Đặt chiều rộng cụ thể
            height: 80,
            color: Colors.white,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center, // Căn giữa
              children: [
                Icon(
                  Icons.share, // Biểu tượng điện thoại
                  color: Colors.blue,
                ),
                Text(
                  'SHARE',
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget TextContent() {
  return Container(
    height: 200,
    color: Colors.white,
    child: const Center(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
        child: Text(
            "Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run."),
      ),
    ),
  );
}
