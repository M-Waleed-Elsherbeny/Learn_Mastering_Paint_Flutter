import 'package:flutter/material.dart';
import 'package:mastering_paint/ClipRect_Widget/cliprect_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mastering Paint',
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: ClipRectWidget()),
    );
  }
}
