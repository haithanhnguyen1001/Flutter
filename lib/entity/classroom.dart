import 'package:flutter/material.dart';

class Classroom {
  late String semester;
  late String subject;
  late String id;
  late int totalStudent;
  late Color colorBackground;
  late String urlBackground;
  Classroom(this.id, this.semester, this.subject, this.totalStudent,
      {this.colorBackground = Colors.blueAccent, this.urlBackground = ""});
}

var listClassroom = [
  Classroom("2024-2025.2.TIN3092.003", "2024 - 2025.2",
      "LAP TRINH DI DONG - NHOM 3", 44,
      colorBackground: Colors.amber,
      urlBackground:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyEcT02u_2D-4h2oh7fmVabsFlyQoA_C05dQ&s"),
  Classroom("2024-2025.2.TIN3092.004", "2024 - 2025.2",
      "LAP TRINH DI DONG - NHOM 4", 45),
  Classroom("2024-2025.2.TIN3092.005", "2024 - 2025.2",
      "LAP TRINH DI DONG - NHOM 5", 46,
      colorBackground: Colors.green),
  Classroom("2024-2025.2.TIN3092.006", "2024 - 2025.2",
      "LAP TRINH DI DONG - NHOM 6", 47),
  Classroom("2024-2025.2.TIN3092.007", "2024 - 2025.2",
      "LAP TRINH DI DONG - NHOM 7", 48),
  Classroom("2024-2025.2.TIN3092.008", "2024 - 2025.2",
      "LAP TRINH DI DONG - NHOM 8", 49),
];
