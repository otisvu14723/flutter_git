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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Homework'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
        width: 600,
        height: 600,
        child: Stack(
          children: <Widget>[
            Container(
              child: Center(
                child: const Text(
                  '5',
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                  ),
                ),
              ),
              color: Colors.purple,
            ),
            Container(
              width: 400,
              height: 200,
              child: Center(
                child: const Text(
                  '1',
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                  ),
                ),
              ),
              color: Colors.red,
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 200,
                height: 400,
                child: Center(
                  child: const Text(
                    '2',
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                    ),
                  ),
                ),
                color: Colors.orange,
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                width: 400,
                height: 200,
                child: Center(
                  child: const Text(
                    '3',
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                    ),
                  ),
                ),
                color: Colors.blueAccent,
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                width: 200,
                height: 400,
                child: Center(
                  child: const Text(
                    '4',
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                    ),
                  ),
                ),
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
