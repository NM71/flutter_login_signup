import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login and Signup Screens',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/login.jpg',
                  height: 230,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Flutter Login Page',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                        fontFamily: 'Roboto-Mono'),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const TextField(
                    decoration: InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4.0)),
                        ))),
                const SizedBox(
                  height: 10,
                ),
                const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4.0)),
                        ))),
                const SizedBox(
                  height: 30,
                ),
                TextButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Container(
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(10)),
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Center(child: Text('Signing In....')),
                        ),
                      ),
                      backgroundColor: Colors.transparent,
                      elevation: 1000,
                      behavior: SnackBarBehavior.floating,
                    ));
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0xff002d68),
                    elevation: 10,
                    shadowColor: Colors.black,
                    minimumSize: const Size(100, 50),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Doesn\'t have an account?',
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpPage()),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        backgroundColor: Colors.blueAccent,
                        content: Text(
                          'Registration',
                        )));
                  },
                  child: const Text(
                    'Create One',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/signup.jpg',
                    height: 230,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Flutter SignUp Page',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent,
                          fontFamily: 'Roboto-Mono'),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const TextField(
                      decoration: InputDecoration(
                          labelText: 'Username',
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(4.0)),
                          ))),
                  const SizedBox(
                    height: 10,
                  ),
                  const TextField(
                      decoration: InputDecoration(
                          labelText: 'Email',
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(4.0)),
                          ))),
                  const SizedBox(
                    height: 10,
                  ),
                  const TextField(
                      decoration: InputDecoration(
                          labelText: 'Address',
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(4.0)),
                          ))),
                  const SizedBox(
                    height: 10,
                  ),
                  const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(4.0)),
                          ))),
                  const SizedBox(
                    height: 10,
                  ),
                  const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: 'Confirm Password',
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(4.0)),
                          ))),
                  const SizedBox(
                    height: 30,
                  ),
                  TextButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Container(
                          //color: Colors.white,
                          decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(10)),
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Center(child: Text('Registering.....')),
                          ),
                        ),
                        backgroundColor: Colors.transparent,
                        elevation: 1000,
                        behavior: SnackBarBehavior.floating,
                      ));
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0xff002d68),
                      elevation: 10,
                      shadowColor: Colors.black,
                      minimumSize: const Size(100, 50),
                    ),
                    child: const Text(
                      'SignUp',
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Already have an account?',
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          backgroundColor: Colors.blueAccent,
                          content: Text('Returning to home'),
                        ),
                      );
                    },
                    child: const Text(
                      'Login',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
