import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My app",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: new Text("Home Page"),
        ),
        body: Center(
          child: Ink(
            decoration:
                ShapeDecoration(shape: CircleBorder(), color: Colors.red),
            child: IconButton(
              onPressed: () {
                print("Press");
              },
              icon: Icon(Icons.home),
              iconSize: 35,
              color: Colors.blueAccent,
              padding: EdgeInsets.all(50.0),
              tooltip: 'Please Press',
              splashColor: Colors.redAccent,
            ),
          ),
        ));
  }
}
