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
  int _counter = 0;
  bool isPressed = false;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void pressIcon() {
    setState(() {
      isPressed = !isPressed; // đảo ngược trạng thái
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // image
            const Image(
              image: NetworkImage(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
              ),
            ),
            // icon
            Container(
              width: 506,
              height: 100,
              // decoration: BoxDecoration(
              //   border: Border.all(width: 1),
              // ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.favorite,
                          color: isPressed ? Colors.red : Colors.black,
                        ),
                        onPressed: () => pressIcon(),
                      ),
                      const Text(
                        "   Like",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      Icon(Icons.comment),
                      Text(
                        "   Comment",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      Icon(Icons.share),
                      Text(
                        "   Share",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // text
            Text(
              'currentCouter is: $_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),

      // event
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
