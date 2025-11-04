import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:image_cropper_app/screens/home_screen.dart';
import 'package:image_cropper_app/models/image_model.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (context) => ImageModel(), child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Cropper',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
