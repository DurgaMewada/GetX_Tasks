import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Secondscreen extends StatelessWidget {
  const Secondscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: Icon(Icons.menu),
        title: Text('Second Screen',style: TextStyle(
            fontSize: 20,
          fontWeight: FontWeight.w500,
        ),),
      ),
      body: Center(
          child: ElevatedButton(
              style: ButtonStyle(
              ),
              onPressed: () {
                Get.back();
              }, child: Text('Back to First Screen',style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),))
      ),
    );
  }
}
