


import 'dart:math';

import 'package:bmicalculator/Shared/Components/components.dart';
import 'package:bmicalculator/bmi_result_screen.dart';
import 'package:flutter/material.dart';

class BMI_Screen extends StatefulWidget {

  @override
  _BMI_ScreenState createState() => _BMI_ScreenState();
}


class _BMI_ScreenState extends State<BMI_Screen> {

  double height = 176;
  double weight = 60;
  int age = 23;
  bool isMale = true;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
                'BMI Calculator'
            ),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale = true;
                          });
                        },
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Image(
                                  image: AssetImage('assets/Images/53450.png'),
                                  height: 90,
                                  width: 90,
                              ),
                               SizedBox(height: 15),
                               Text(
                                'MALE',
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: isMale ? const Color(0xFF7BABF4) : Colors.grey[300],
                            borderRadius: BorderRadius.circular(10)
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale = false;
                          });
                        },
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Image(
                                  image: AssetImage('assets/Images/53431.png'),
                                  height: 90,
                                  width: 90,
                              ),
                              SizedBox(height: 15),
                              Text(
                                'FEMALE',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: isMale ? Colors.grey[300] : const Color(0xFFEF86F8) ,
                            borderRadius: BorderRadius.circular(10)
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[300],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'HEIGHT',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 25
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${height.round()}',
                            style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 25,
                            ),
                          ),
                          const SizedBox(width: 5),
                          const Text(
                            'CM',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      Slider(
                          value: height,
                          onChanged: (double val){
                            setState((){
                            height=val;
                          }
                          );
                            },
                          min: 80,
                          max: 220,
                          inactiveColor: Colors.grey[400]
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[300],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'WEIGHT',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20
                              ),
                            ),
                            const SizedBox(height: 5),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                 Text(
                                  '$weight',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 25,
                                  ),
                                ),
                                const SizedBox(width: 5.0),
                                const Text(
                                  'Kg',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                DefualtFloatActionButton(
                                    function: ()
                                    {
                                      setState(() {
                                        weight-=0.5;
                                      });
                                    },
                                    icon: const Icon(Icons.remove),
                                    isMini: true,
                                    namefloatAction: '-weight'
                                ),
                                const SizedBox(width: 5),
                                DefualtFloatActionButton(
                                    function: ()
                                    {
                                      setState(() {
                                        weight+=0.5;
                                      });
                                    },
                                    icon: const Icon(Icons.add),
                                    isMini: true,
                                    namefloatAction: '+weight'
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[300],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'AGE',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20
                              ),
                            ),
                            const SizedBox(height: 5),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '$age',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 25,
                                  ),
                                ),
                                const SizedBox(width: 5.0),
                                const Text(
                                  'Years',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                DefualtFloatActionButton(
                                    icon: const Icon(Icons.remove),
                                    isMini: true,
                                    namefloatAction: '-age',
                                    function: (){setState(() {
                                      age--;
                                    });}
                                ),
                                const SizedBox(width: 5),
                                DefualtFloatActionButton(
                                    function: ()
                                    {
                                      setState(() {
                                        age++;
                                      });
                                    },
                                    icon: const Icon(Icons.add),
                                    namefloatAction: '+age',
                                    isMini: true,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.blue,
              width: double.infinity,
              child: MaterialButton(
                  onPressed: (){
                    setState(() {
                      double result = weight/pow(height/100, 2);
                      Navigator.push( context,
                          MaterialPageRoute(builder: (context)=>BMIResultScreen(
                            age: age,
                            isMale: isMale,
                            result: result,
                          ),
                          ),
                      );
                    });
                  },
                  child: const Text(
                    'Calculate',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                    ),
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}