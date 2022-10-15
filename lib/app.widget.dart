import 'package:flutter/material.dart';
import 'package:flutter_playground/drawing/drawing.dart';
import 'package:flutter_playground/dropdown/dropdown.dart';
import 'package:flutter_playground/fake_dropdown/fake_dropdown.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FakeDropdown(),
    );
  }
}
