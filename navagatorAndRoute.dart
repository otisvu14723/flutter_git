import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    // home: FirstRoute(),
    routes: {
      '/': (context) => const FirstRoute(),
      '/2': (context) => const SecondRoute(),
      '/3': (context) => const ThirdRoute(),
    },
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Route'),
      ),
      body: const Center(
        child: MyTextButton(rou: '/2', string: 'helloo world'),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    final argument = ModalRoute.of(context)?.settings.arguments;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Second Route'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_transit)),
            ],
          ),
        ),
        body: TabBarView(children: [
          Center(
            child: Text('$argument'),
          ),
          const Center(
            child: MyTextButton(rou: '/3'),
          ),
        ]),
      ),
    );
  }
}

class ThirdRoute extends StatelessWidget {
  const ThirdRoute({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Third Route'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_transit)),
            ],
          ),
        ),
        body: TabBarView(children: [
          Center(
            child: TextButton(
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    '/', (Route<dynamic> route) => false);
              },
              child: const Text('Quay về màn 1'),
            ),
          ),
          Center(
            child: TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
              child: const Text('Thêm màn 1'),
            ),
          ),
        ]),
      ),
    );
  }
}

class MyTextButton extends StatelessWidget {
  const MyTextButton({required this.rou, this.string, super.key});

  final String? string;
  final String rou;

  void nav(BuildContext context) {
    Navigator.of(context).pushNamed(rou, arguments: string);
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        nav(context);
      },
      child: const Text('Open Route'),
    );
  }
}
