

import 'package:flutter/material.dart';



class BMIResultScreen extends StatelessWidget {

  final bool isMale;
  final int age;
  final double result;

  BMIResultScreen(
      {
        required this.isMale,
        required this.age,
        required this.result,
      }
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: const Center(child: Text('BMI Result')),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Gender : ${isMale? 'Male' : 'Female'}',
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300
              ),
            ),
            const SizedBox(height: 15),
            Text(
              'BMI Result: ${result.round()}',
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300
              ),
            ),
            const SizedBox(height: 15),
            Text(
              'Age: ${age}',
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300
              ),
            ),
          ],
        ),
      ),
    );
  }
}
