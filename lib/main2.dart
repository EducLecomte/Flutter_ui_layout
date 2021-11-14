import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter UI Layout'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text('Container 1'),
              color: Colors.blue,
              margin: EdgeInsets.only(bottom: 30),
            ),
            Container(
              child: Text('Container 2'),
              color: Colors.green,
              height: 40,
              width: 40,
              margin: EdgeInsets.only(bottom: 30),
            ),
            Container(
              child: Text('Container 3'),
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.red),
              margin: EdgeInsets.only(bottom: 30),
            ),
            Container(
              child: Text('Container 4'),
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.red),
              padding: EdgeInsets.all(30),
              margin: EdgeInsets.only(bottom: 30),
            ),
            Container(
              child: Text('Container 5'),
              padding: EdgeInsets.all(15),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: Border.all(
                      color: Colors.red,
                      width: 8,
                    ) +
                    Border.all(
                      color: Colors.green,
                      width: 8.0,
                    ) +
                    Border.all(
                      color: Colors.blue,
                      width: 8.0,
                    ),
              ),
              margin: EdgeInsets.only(bottom: 10),
            ),
            Divider(),
            Divider(
              color: Colors.blue,
              indent: 40,
              endIndent: 40,
              thickness: 2,
              height: 30,
            ),
            Container(
              height: 150,
              width: 150,
              color: Colors.blueGrey,
              child: Icon(
                Icons.directions_car,
                color: Colors.white,
                size: 40,
              ),
              alignment: Alignment(-0.8, 0.7),
            ),
          ],
        ),
      ),
    );
  }
}
