import 'dart:io';

import 'package:app/custom_slider.dart';
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
      home: const MyHomePage(title: 'UI Demo'),
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
            const Text('Android - Material'),
            // Android
            Slider(value: 10, onChanged: (value) {}, max: 20, min: 0),
            // ios
            const Text('iOS - Cupertino'),
            CupertinoSlider(value: 10, onChanged: (value) {}, max: 20, min: 0),
            // Android E iOS
            Text('Adapted to: ${Platform.operatingSystem.toUpperCase()}'),
            // add ADAPTIVE in Widget, to adapt on 2 platforms
            Slider.adaptive(value: 10, onChanged: (value) {}, max: 20, min: 0),

            const Padding(
              padding: EdgeInsets.only(top: 32),
              child: Text(
                'Custom Slider',
              ),
            ),
            // Slider to Platform
            CustomSlider()
          ],
        ),
      ),
    );
  }
}
