import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/pageOne': (BuildContext context) => const PageOne(),
        '/pageTwo': (BuildContext context) => const PageTwo(),
      },
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: PageOne(),
      ),
    );
  }
}

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("ini Page One"),
        ),
        body: Center(
          child: IconButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const PageTwo(),
                //   ),
                // );
                Navigator.pushNamed(context, '/pageTwo');
              },
              icon: const Icon(Icons.arrow_forward)),
        ),
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("ini Page Two"),
          leading: IconButton(
              onPressed: () {
                // Navigator.pop(
                //   context,
                // );
                Navigator.pushNamed(context, '/PageOne');
              },
              icon: const Icon(Icons.arrow_back)),
        ),
        body: Center(
          child: IconButton(
              onPressed: () {
                Navigator.pop(
                  context,
                  // MaterialPageRoute(
                  //   builder: (context) => const PageOne(),
                  // ),
                );
              },
              icon: const Icon(Icons.arrow_back)),
        ),
      ),
    );
  }
}
