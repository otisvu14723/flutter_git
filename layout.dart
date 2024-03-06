import 'package:flutter/material.dart';

void main() => runApp(const Layout());

class Layout extends StatelessWidget {
  const Layout({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Stack(
        children: [
          Container(
            color: Colors.grey[200],
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 20, 5, 20),
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Align(
              alignment: Alignment.topRight,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft:
                      Radius.circular(MediaQuery.of(context).size.longestSide),
                  // topLeft: Radius.circular(
                  //     MediaQuery.of(context).size.longestSide),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width * 2 / 4,
                  height: MediaQuery.of(context).size.height * 3 / 4,
                  color: Colors.greenAccent.shade400,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(9),
                  decoration: const BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.all(Radius.circular(23)),
                  ),
                  child: const Text(
                    'Intermediate',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(height: 100),
                const Row(
                  children: [
                    Text('''Today's \nchallenge''',
                        style: TextStyle(
                            fontSize: 60, fontFamily: 'Merriweather')),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    Text(
                      'German meals',
                      style: TextStyle(color: Colors.tealAccent, fontSize: 40),
                    )
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                const Row(
                  children: [
                    Icon(
                      Icons.diamond,
                      color: Colors.red,
                    ),
                    Text(
                      'Take this lesson to \nearn a new milestone',
                      softWrap: true,
                      style: TextStyle(color: Colors.grey, fontSize: 23),
                    )
                  ],
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(200, 20, 5, 20),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Image.asset('assets/2.jpg', scale: 1.5),
                ),
              )
            ],
          )
        ],
      )),
    );
  }
}
