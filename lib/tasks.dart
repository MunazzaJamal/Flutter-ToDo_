import 'package:flutter/material.dart';
import 'package:todo_assign/dashboard.dart';
import 'dashboard.dart';

class TasksView extends StatefulWidget {
  TasksView({super.key});

  @override
  State<TasksView> createState() => _TasksViewState();
}

class _TasksViewState extends State<TasksView> {
  TextEditingController title = TextEditingController();

  TextEditingController description = TextEditingController();

  TextEditingController from = TextEditingController();

  TextEditingController to = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(138, 157, 255, 0.72),
      body: SingleChildScrollView(
        child: Container(
          height: 800,
          child: Stack(
            children: [
              Positioned(
                left: 24,
                top: 78,
                child: customContainer(228, 34, 'Create New Task', 28,
                    f: FontWeight.bold),
              ),
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
                left: 24,
                top: 153,
                child: customContainer(58, 29, 'From', 24),
              ),
              Positioned(
                left: 269,
                top: 159,
                child: customContainer(28, 29, 'To', 24),
              ),
              Positioned(
                  left: 24, top: 197, child: textContainer(128, 52, from)),
              Positioned(
                  left: 267, top: 197, child: textContainer(128, 52, to)),
              Positioned(
                  left: 39,
                  top: 275,
                  child: customContainer(42, 24, 'Title', 20)),
              Positioned(
                  left: 24, top: 304, child: textContainer(390, 52, title)),
              Positioned(
                left: 39,
                top: 376,
                child: customContainer(105, 24, 'Description', 20),
              ),
              Positioned(
                  left: 24,
                  top: 409,
                  child: textContainer(390, 101, description, L: 4)),
              Positioned(
                  left: 24,
                  top: 541,
                  child: customContainer(146, 24, 'Choose Priority', 20)),
              Positioned(
                left: 24,
                top: 593,
                child: ElevatedButton(
                  onPressed: () =>
                      print('High'), // Pass the function as a callback
                  style: ElevatedButton.styleFrom(
                    minimumSize:
                        const Size(101, 31), // Set the width and height
                    backgroundColor: Colors.red,
                  ),
                  //onPressed: loginView(context), // Call the login function
                  child: const Text('High',
                      style: TextStyle(color: Colors.black, fontSize: 20)),
                ),
              ),
              Positioned(
                left: 160,
                top: 593,
                child: ElevatedButton(
                  onPressed: () =>
                      print('Medium'), // Pass the function as a callback
                  style: ElevatedButton.styleFrom(
                    minimumSize:
                        const Size(101, 31), // Set the width and height
                    backgroundColor: const Color.fromRGBO(166, 166, 166, 1),
                  ),
                  //onPressed: loginView(context), // Call the login function
                  child: const Text('Medium',
                      style: TextStyle(color: Colors.black, fontSize: 20)),
                ),
              ),
              Positioned(
                left: 320,
                top: 593,
                child: ElevatedButton(
                  onPressed: () =>
                      print('Low'), // Pass the function as a callback
                  style: ElevatedButton.styleFrom(
                    minimumSize:
                        const Size(101, 31), // Set the width and height
                    backgroundColor: const Color.fromRGBO(121, 175, 146, 1),
                  ),
                  child: const Text('Low',
                      style: TextStyle(color: Colors.black, fontSize: 20)),
                ),
              ),
              Positioned(
                left: 24,
                top: 700,
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Added'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                //dhbdsnfdjnvldk
                                tasks.add({
                                  'title': title.text,
                                  'description': description.text,
                                  'from': from.text,
                                  'to': to.text,
                                });
                                setState(() {});
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DashboardView()));
                              },
                              child: const Text('Go to Dashboard'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize:
                        const Size(374, 53), // Set the width and height
                    backgroundColor: const Color.fromRGBO(121, 175, 146, 1),
                  ),
                  child: const Text('Add',
                      style: TextStyle(color: Colors.black, fontSize: 20)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget customContainer(w, h, text, s,
    {Color c = Colors.black, FontWeight f = FontWeight.normal}) {
  return Container(
    width: w,
    height: h,
    child: Text(
      text,
      style: TextStyle(
        fontSize: s,
        fontWeight: f,
        color: c,
      ),
    ),
  );
}

Widget textContainer(width, height, inp, {L}) {
  return SizedBox(
    width: width,
    height: height,
    child: TextField(
      controller: inp,
      obscureText: false,
      maxLines: L,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        filled: true,
        fillColor: Colors.white,
      ),
    ),
  );
}
