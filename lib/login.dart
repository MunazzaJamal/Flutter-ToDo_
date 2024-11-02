import 'package:flutter/material.dart';
import 'package:todo_assign/home.dart';

class LoginView extends StatefulWidget {
  LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  void loginView(BuildContext context) {
    print(emailController.text);
    if (emailController.text == 'abc@gmail.com' &&
        passwordController.text == '123') {
      print('Login Successful');
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomeView()),
      );
      emailController.clear();
      passwordController.clear();
    } else {
      // Displaying a dialog to try again
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Login Failed'),
            content: const Text('Invalid email or password. Please try again.'),
            actions: [
              TextButton(
                onPressed: () {
                  // Close the dialog and allow user to try again
                  Navigator.of(context).pop();
                },
                child: const Text('Try Again'),
              ),
            ],
          );
        },
      );
      emailController.clear();
      passwordController.clear();
      // print('Login Failed');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(138, 157, 255, 0.72),
      // appBar: AppBar(
      //   backgroundColor: Colors.blue,
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text('')
            Container(
              width: 500,
              child: Column(
                children: [
                  TextField(
                    controller: emailController,
                    obscureText: false,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                      filled: true,
                      fillColor: Color(0xffdae2ff),
                      // hoverColor: Colors.amber,
                    ),
                  ),
                  const SizedBox(height: 10), // Add spacing between TextFields
                  TextField(
                    controller: passwordController,
                    obscureText: true, // To hide password text
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      filled: true,
                      fillColor: Color(0xffdae2ff),
                    ),
                  ),
                  const SizedBox(height: 20), // Add spacing before the button
                  ElevatedButton(
                    onPressed: () =>
                        loginView(context), // Pass the function as a callback

                    //onPressed: loginView(context), // Call the login function
                    child: Text('Login'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
