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
      title: 'TNTT QR Scan',
      theme: ThemeData(),
      home: const Center(child: Text('TNTT QR Scan')),
    );
  }
}

// Remember: You have to create a project using flutter create project_name
// Then you can replace the main.dart file with this code.
// Then you can run the app using flutter run
// You can also use the command flutter run -d chrome to run the app on the web