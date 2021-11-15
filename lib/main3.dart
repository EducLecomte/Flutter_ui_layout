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
  int _index = 0;
  final List<Step> _steps = [
    const Step(
        title: Text('Palier 1'),
        content: Text('Ceci est le contenu du Stepper 1')),
    const Step(
        title: Text('Palier 2'),
        content: Text('Ceci est le contenu du Stepper 2')),
    const Step(
        title: Text('Palier 3'),
        content: Text('Ceci est le contenu du Stepper 3')),
    const Step(
        title: Text('Palier 4'),
        content: Text('Ceci est le contenu du Stepper 4')),
  ];

  void _incrementStepper() {
    setState(() {
      if ((_index >= 0) && (_index < _steps.length - 1)) {
        _index++;
      }
    });
  }

  void _decrementStepper() {
    setState(() {
      if (_index > 0 && _index < _steps.length) {
        _index--;
      }
    });
  }

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
            const Text(
              'Stepper',
            ),
            Stepper(
              steps: _steps,
              onStepContinue: _incrementStepper,
              onStepCancel: _decrementStepper,
              currentStep: _index,
            ),
          ],
        ),
      ),
    );
  }
}
