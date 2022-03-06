import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AngleCategoryPage extends StatefulWidget {
  const AngleCategoryPage({ Key? key }) : super(key: key);

  @override
  State<AngleCategoryPage> createState() => _AngleCategoryPageState();
}

class _AngleCategoryPageState extends State<AngleCategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
    );
  }
}