import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counter = 08;
  void increaseCounter() {
    setState(() {
      counter++;
    });
  }

  void decreaseCounter() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Flutter First App'),
        backgroundColor: Colors.indigo,
        actions: const [
          Icon(
            Icons.settings,
            color: Colors.amber,
            size: 30.0,
          )
        ],
        leading: const Icon(
          Icons.menu,
          color: Colors.amberAccent,
          size: 30.0,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Row(
          children: <Widget>[
            IconButton(
              onPressed: increaseCounter,
              icon: const Icon(
                Icons.add,
                color: Colors.amber,
                size: 50.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                '$counter',
                style: const TextStyle(fontSize: 30.0),
              ),
            ),
            IconButton(
                onPressed: decreaseCounter,
                icon: const Icon(
                  Icons.remove,
                  size: 50.0,
                ))
          ],
        ),
      ),
    );
  }
}
