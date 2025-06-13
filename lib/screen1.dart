import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.blueGrey[400],
        title: Center(
          child: Text(
            'Text Style',
            style: TextStyle(
              fontSize: 30,
              letterSpacing: 2,
              fontWeight: FontWeight.bold,
              fontFamily: 'Font1',
              shadows: <Shadow>[
                Shadow(
                  blurRadius: 50,
                  color: Colors.white70,
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.grey[200],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Hello I am Ashraf. This is a task about text style. I will do my best to give a good task.',
            style: TextStyle(
              fontSize: 20,
              letterSpacing: 1,
              fontWeight: FontWeight.w900,
              fontFamily: 'Font1',

              shadows: <Shadow>[
                Shadow(
                  blurRadius: 5,
                  color: Colors.black26,
                ),
              ],
              color: Colors.black87,
            ),
          ),
          RichText(
            text: TextSpan(
              text: 'Don\'t have an account ',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 16,
                fontWeight: FontWeight.w900,

              ),
              children: [
                TextSpan(
                  text: 'Sign up',
                  style: TextStyle(
                    color: Colors.blue[600],
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: ' now ',
                  style: TextStyle(
                    color: Colors.green[600],
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                TextSpan(
                  text: 'or log in!',
                  style: TextStyle(
                    color: Colors.red[600],
                    fontSize: 16,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}