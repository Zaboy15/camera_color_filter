import 'package:camera_filters/camera_filters.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Color> colors = [
    Colors.transparent,
    Colors.red,
    Colors.blue,
    Colors.green
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CameraScreenPlugin(
            filters: colors,
            onDone: (value) {
              print(value);
            },
            onVideoDone: (value) {
              print(value);
            }),
      ),
    );
  }
}
