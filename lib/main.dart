import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//Stateless dan Statefull
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PBM Zahra',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const MyHomePage(title: 'Zahra Apps'),
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
  double _fontSize = 12.0;
  bool _isDisguised = false;

  void _incrementCounter() {
    setState(() {
      _counter++;
      _fontSize++;
    });
  }

  void _namaSamaran() {
    setState(() {
      _isDisguised = true;
    });
  }

  void _namaAsli() {
    setState(() {
      _isDisguised = false;
    });
  }

//Widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _isDisguised ? "Nama Samaran" : "Nama Asli",
              style: TextStyle(fontSize: _fontSize),
            ),
            Text(
              'You have pushed the button this many times:',
              style: TextStyle(fontSize: _fontSize),
            ),
            Text(
              '$_counter',
              style: TextStyle(fontSize: _fontSize),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: ElevatedButton(
                onPressed: _incrementCounter,
                child: const Text("Perbesar Ukuran Font"),
              ),
            ),
            ElevatedButton(
              onPressed: _isDisguised ? _namaAsli : _namaSamaran,
              child: const Text("Ubah Nama"),
            )
          ],
        ),
      ),
    );
  }
}
