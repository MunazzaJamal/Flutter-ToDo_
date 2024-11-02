import 'package:flutter/material.dart';
import 'tasks.dart';

List<Map<String, String>> tasks = [
  {
    'title': 'Complete Assignment #2',
    'description': 'Flutter assignment',
    'from': '10:00 am',
    'to': '02:00 pm'
  },
  {
    'title': 'Submit Fee challan',
    'description': 'Fees semester 2021',
    'from': '11:00 am',
    'to': '11:59 pm'
  }
];

class DashboardView extends StatefulWidget {
  DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(138, 157, 255, 0.72),
      body: SingleChildScrollView(
        child: Container(
          height: 900,
          child: Stack(
            children: [
              const Positioned(
                left: 348,
                top: 63,
                child: CircleAvatar(
                  radius: 32.5,
                  backgroundImage: NetworkImage(
                      'https://cdn.pixabay.com/photo/2024/02/15/16/57/cat-8575768_960_720.png'),
                ),
              ),
              Positioned(
                  left: 32,
                  top: 89,
                  child: customContainer(250, 34, 'Welcome to Notes', 28,
                      f: FontWeight.bold)),
              Positioned(
                left: 366,
                top: 472,
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TasksView(),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.add_circle_outline,
                    color: Colors.green,
                    size: 30,
                  ),
                ),
              ),
              Positioned(
                  left: 32,
                  top: 132,
                  child: customContainer(195, 29, 'Have a great Day', 24)),
              Positioned(
                  left: 25,
                  top: 190,
                  child: customContainer(182, 29, 'My Priority Task', 24)),
              Positioned(
                  left: 32,
                  top: 238,
                  child: Container(
                    width: 150,
                    height: 190,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(26),
                      color: Color.fromRGBO(166, 166, 166, 1),
                    ),
                  )),
              Positioned(
                  left: 208,
                  top: 238,
                  child: Container(
                    width: 150,
                    height: 190,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(26),
                      color: Color.fromRGBO(166, 166, 166, 1),
                    ),
                  )),
              Positioned(
                left: 39,
                top: 281,
                child: customContainer(83, 17, '2 hours ago', 14,
                    c: Color.fromRGBO(218, 218, 218, 1)),
              ),
              Positioned(
                left: 39,
                top: 312,
                child: customContainer(112, 62, 'Mobile App\n UI Design', 20,
                    c: Colors.white),
              ),
              Positioned(
                left: 39,
                top: 367,
                child: customContainer(
                    143, 50, 'using Figma\nand other tools', 14,
                    c: Color.fromRGBO(255, 255, 255, 0.58)),
              ),
              Positioned(
                left: 223,
                top: 281,
                child: customContainer(84, 17, '4 hours ago', 14,
                    c: Color.fromRGBO(218, 218, 218, 1)),
              ),
              Positioned(
                left: 214,
                top: 312,
                child: customContainer(112, 62, 'Capture sun\nRise Shots', 20,
                    c: Colors.white),
              ),
              Positioned(
                left: 211,
                top: 367,
                child: customContainer(
                    143, 50, 'Complete GuruShot\nchallenge', 14,
                    c: Color.fromRGBO(255, 255, 255, 0.58)),
              ),
              const Positioned(
                top: 264,
                left: 328,
                child: Icon(
                  Icons.camera_alt, // Replace with your desired icon
                  color: Color.fromRGBO(195, 195, 195, 1),
                  size: 21, // Size of the icon
                ),
              ),
              const Positioned(
                top: 260,
                left: 157,
                child: Icon(
                  Icons.phone_android, // Replace with your desired icon
                  color: Color.fromRGBO(199, 199, 199, 1),
                  size: 21, // Size of the icon
                ),
              ),
              Positioned(
                  top: 476,
                  left: 25,
                  child: customContainer(93, 24, 'My Tasks', 20,
                      f: FontWeight.bold)),
              Positioned(
                  top: 523,
                  left: 25,
                  child: customContainer(129, 19, 'Todays Task', 16,
                      f: FontWeight.bold)),
              Positioned(
                top: 523,
                left: 160,
                child: customContainer(129, 19, 'Weekly Task', 16),
              ),
              Positioned(
                top: 523,
                left: 299,
                child: customContainer(129, 19, 'Monthly Task', 16),
              ),
              Positioned(
                top: 566,
                left: 25,
                child: Container(
                  width: 379,
                  height: 800,
                  child: ListView.builder(
                    itemCount: tasks.length,
                    itemBuilder: (context, index) {
                      return taskCard('  ${tasks[index]['title']}',
                          '${tasks[index]['from']}');
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget taskCard(String title, String date) {
  return Column(
    children: [
      Container(
        height: 56,
        width: 379,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Stack(
          children: [
            Positioned(
              left: 20,
              top: 4,
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 16, // Set a default font size
                  color: Colors.black, // Set text color
                ),
              ),
            ),
            const Positioned(
                left: 20,
                top: 26,
                child: Icon(
                  Icons.calendar_month_outlined,
                  size: 18,
                )),
            Positioned(
              left: 40,
              top: 23,
              child: Text(
                date,
                style: const TextStyle(
                  fontSize: 14, // Set a default font size
                  color: Colors.grey, // Set text color
                ),
              ),
            ),
            Positioned(
                left: 177,
                top: 26,
                child: Icon(
                  Icons.flag,
                  size: 15,
                )),
            Positioned(
                left: 352,
                top: 16,
                child: Icon(
                  Icons.more_vert,
                  size: 22,
                )),
            Positioned(
                left: 300,
                top: 3,
                child: Container(
                    height: 14,
                    width: 47,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.green,
                    ),
                    child: const Center(
                      child: Text(
                        'ToDo',
                        style: TextStyle(
                          fontSize: 10, // Set a default font size
                          color: Colors.white,
                        ), // Set text color
                      ),
                    )))
          ],
        ),
      ),
      const SizedBox(
        height: 10,
      ),
    ],
  );
}
