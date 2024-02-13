import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:test_langue_ui/pages/first_page.dart';
// ignore: unused_import
import 'package:test_langue_ui/widgets/background.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
   
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      scaffoldBackgroundColor: const Color(0xFFFFFFFF),
      
    
        useMaterial3: true,
      ),
      home: const FirstPage(),
    );
  }
}
