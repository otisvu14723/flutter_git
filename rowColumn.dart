import 'package:flutter/material.dart';

void main() {
  runApp(const alooo());
}

class alooo extends StatelessWidget {
  const alooo({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: _Container1(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    _Container(child: Center(child: Text('Strawberry....'))),
                    Flexible(
                      child: _Container(
                        child: Text(
                            "vuhathanh vuhathanh vuhathanh vuhathanh vuhathanh vuhathanh"),
                      ),
                    ),
                    _Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.star_rate),
                          Icon(Icons.star_rate),
                          Icon(Icons.star_rate),
                          Icon(Icons.star_rate),
                          Icon(Icons.star_rate),
                          Text('           1.7k reviews')
                        ],
                      ),
                    ),
                    _Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Icon(Icons.facebook),
                              Text("PREP:"),
                              Text("25 mins"),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.tiktok),
                              Text("PREP:"),
                              Text("25 mins"),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.telegram),
                              Text("PREP:"),
                              Text("25 mins"),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Flexible(
              child: Column(
                children: [
                  Image(
                    image: NetworkImage(
                      "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg",
                    ),
                    height: 418,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _Container extends StatelessWidget {
  const _Container({required this.child, super.key});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      margin: EdgeInsets.all(5),
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
          border: Border.all(
        width: 2,
      )),
      child: child,
    );
  }
}

class _Container1 extends StatelessWidget {
  const _Container1({required this.child, super.key});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 400,
      // padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
        ),
      ),
      child: child,
    );
  }
}
