import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(bottom: 24),
              child: Text(
                'Examples Widget to Android and iOS via code',
              ),
            ),
            const Text('Android'),
            // Android
            Slider(value: 10, onChanged: (value) {}, max: 20, min: 0),
            // ios
            const Text('iOS'),
            CupertinoSlider(value: 10, onChanged: (value) {}, max: 20, min: 0),
            // Android E iOS
            const Text('iOS'),
            // add ADAPTIVE in Widget, to adapt on 2 platforms
            Slider.adaptive(value: 10, onChanged: (value) {}, max: 20, min: 0)
          ],
        ),
      ),
    );
  }
}
