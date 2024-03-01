import 'package:flutter/material.dart';

void main() {
  runApp(const Flag());
}

class Flag extends StatelessWidget {
  const Flag({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Container(
            width: 450,
            height: 300,
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.blueGrey,
                  blurRadius: 10,
                  offset: Offset(5.0, 5.0),
                  spreadRadius: 4,
                )
              ],
              color: Colors.red,
            ),
            child: const Center(
              child: Icon(
                Icons.star,
                size: 200,
                color: Colors.yellow,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
