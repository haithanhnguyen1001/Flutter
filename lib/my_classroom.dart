import 'package:flutter/material.dart';
import 'package:flutter_application_1/entity/Classroom.dart';

class MyClassroom extends StatelessWidget {
  const MyClassroom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: listClassroom.map((room) => itemClassroom(room)).toList(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: Colors.red,
        ),
      ),
    );
  }
}

Widget itemClassroom(Classroom room) {
  return Container(
    height: 200,
    padding: const EdgeInsets.all(25),
    margin: const EdgeInsets.only(left: 20, top: 10, right: 20, bottom: 10),
    decoration: BoxDecoration(
      image: DecorationImage(
          opacity: 0.7,
          image: NetworkImage(room.urlBackground),
          fit: BoxFit.cover),
      color: room.colorBackground,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "[${room.semester}] ${room.subject}",
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              Text(
                room.id,
                style: const TextStyle(color: Colors.black87),
              ),
              Text(
                "${room.totalStudent} hoc vien",
                style: const TextStyle(
                    color: Colors.black54, fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
        const Column(
          children: [Icon(Icons.more_horiz)],
        )
      ],
    ),
  );
}

// Widget itemClassroom() {
//   return Container(
//     height: 200,
//     padding: EdgeInsets.all(25),
//     margin: EdgeInsets.only(left: 20, top: 10, right: 20, bottom: 10),
//     decoration: BoxDecoration(
//         color: Colors.amber,
//         borderRadius: BorderRadius.circular(10),
//         image: DecorationImage(
//             image: NetworkImage(
//                 "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3duEi2V4ZrLleBiaM6NEBsG_pA-3lvVgv8A&s"),
//             fit: BoxFit.cover)),
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               "[2024 - 2025.2] Lap trinh di dong nhom 3",
//               style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
//             ),
//             Text(
//               "2024-2025.2.TIN3092.003",
//               style: TextStyle(color: Colors.black87),
//             ),
//             SizedBox(
//               height: 90,
//             ),
//             Text(
//               "40 hoc vien",
//               style:
//                   TextStyle(color: Colors.black54, fontWeight: FontWeight.w400),
//             )
//           ],
//         ),
//         Column(
//           children: [Icon(Icons.more_horiz)],
//         )
//       ],
//     ),
//   );
// }
