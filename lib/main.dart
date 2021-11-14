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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 20),
          ),
          Text(
            'Alignements :',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
          ),
          Expanded(
              flex: 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Transform.rotate(
                    angle: 14,
                    child: Text(
                      'start :',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.amber,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Transform.rotate(
                    angle: 14,
                    child: Text(
                      'end :',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Transform.rotate(
                    angle: 14,
                    child: Text(
                      'center :',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Transform.rotate(
                    angle: 14,
                    child: Text(
                      'evenly :',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Transform.rotate(
                    angle: 14,
                    child: Text(
                      'around :',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.purple,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Transform.rotate(
                    angle: 14,
                    child: Text(
                      'between :',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )),
          Divider(
            color: Colors.white,
          ),
          Expanded(
            flex: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.android,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.home,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.build,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.phone,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.group,
                      color: Colors.amber,
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Icon(
                      Icons.android,
                      color: Colors.deepOrange,
                    ),
                    Icon(
                      Icons.home,
                      color: Colors.deepOrange,
                    ),
                    Icon(
                      Icons.build,
                      color: Colors.deepOrange,
                    ),
                    Icon(
                      Icons.phone,
                      color: Colors.deepOrange,
                    ),
                    Icon(
                      Icons.group,
                      color: Colors.deepOrange,
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.android,
                      color: Colors.blue,
                    ),
                    Icon(
                      Icons.home,
                      color: Colors.blue,
                    ),
                    Icon(
                      Icons.build,
                      color: Colors.blue,
                    ),
                    Icon(
                      Icons.phone,
                      color: Colors.blue,
                    ),
                    Icon(
                      Icons.group,
                      color: Colors.blue,
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(
                      Icons.android,
                      color: Colors.red,
                    ),
                    Icon(
                      Icons.home,
                      color: Colors.red,
                    ),
                    Icon(
                      Icons.build,
                      color: Colors.red,
                    ),
                    Icon(
                      Icons.phone,
                      color: Colors.red,
                    ),
                    Icon(
                      Icons.group,
                      color: Colors.red,
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Icon(
                      Icons.android,
                      color: Colors.purple,
                    ),
                    Icon(
                      Icons.home,
                      color: Colors.purple,
                    ),
                    Icon(
                      Icons.build,
                      color: Colors.purple,
                    ),
                    Icon(
                      Icons.phone,
                      color: Colors.purple,
                    ),
                    Icon(
                      Icons.group,
                      color: Colors.purple,
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(
                      Icons.android,
                      color: Colors.green,
                    ),
                    Icon(
                      Icons.home,
                      color: Colors.green,
                    ),
                    Icon(
                      Icons.build,
                      color: Colors.green,
                    ),
                    Icon(
                      Icons.phone,
                      color: Colors.green,
                    ),
                    Icon(
                      Icons.group,
                      color: Colors.green,
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
