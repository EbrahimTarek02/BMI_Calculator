import 'dart:math';

import 'package:bmi_calculator/shared/components/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../bmi_result/bmi_result.dart';


class bmi_screen extends StatefulWidget {

  @override
  _bmi_screenState createState() => _bmi_screenState();
}

class _bmi_screenState extends State<bmi_screen> {
  int weight = 70;
  int age = 20;
  bool isMale = true;
  double height = 170;
  double result = 0;
  late String state;
  late String message;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0a0f1e),
        centerTitle: true,
        title: Text(
            'BMI CALCULATOR'
        ),
      ),
      body: Container(
        color: Color(0xff0a0f1e),
        child: Column(
          children:
          [
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children:
                    [
                      defaultGestureDetector(
                          onTap: ()
                          {
                            setState(() {
                              isMale = true;
                            });
                          },
                          icon: Icons.male_outlined,
                          gender: 'male',
                          decoration: BoxDecoration(
                            color: isMale? Colors.lightGreen : Color(0xff101323),
                            borderRadius: BorderRadius.circular(20.0)
                          )
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      defaultGestureDetector(
                          onTap: (){
                            setState(() {
                              isMale = false;
                            });
                          },
                          icon: Icons.female_outlined,
                          gender: 'female',
                          decoration: BoxDecoration(
                              color: !isMale? Colors.lightGreen : Color(0xff101323),
                              borderRadius: BorderRadius.circular(20.0)
                          )
                      ),
                    ],
                  ),
                )
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 15.0
                ),
                child: Container(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:
                    [
                      Text(
                        'HEIGHT',
                        style: TextStyle(
                            color: Colors.white24,
                            fontSize: 20.0
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children:
                        [
                          Text(
                            '${height.toInt()}',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30.0,
                                fontWeight: FontWeight.w900
                            ),
                          ),
                          Text(
                            'cm',
                            style: TextStyle(
                                color: Colors.white24,
                                fontSize: 15.0
                            ),
                          ),
                        ],
                      ),
                      Slider(
                        value: height,
                        min: 50,
                        max: 230,
                        onChanged: (value){
                          setState(() {
                            height = value;
                          });
                        },
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Color(0xff1a1b2d),
                      borderRadius: BorderRadius.circular(20.0)
                  ),
                ),
              ),
            ),
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children:
                    [
                      Expanded(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:
                            [
                              Text(
                                'WEIGHT',
                                style: TextStyle(
                                    color: Colors.white24,
                                    fontSize: 20.0
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                '$weight',
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 30.0,
                                    color: Colors.white
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:
                                [
                                  defaultFloatingActionButton(
                                      onPressed: ()
                                      {
                                        setState(() {
                                          if(weight == 25)
                                            weight = weight;
                                          else
                                            weight--;
                                        });
                                      },
                                      icon: Icons.remove,
                                      heroTag: 'weight-'
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  defaultFloatingActionButton(
                                      onPressed: ()
                                      {
                                        setState(() {
                                          if(weight == 500)
                                            weight = weight;
                                          else
                                            weight++;
                                        });
                                      },
                                      icon: Icons.add,
                                      heroTag: 'weight+'
                                  ),
                                ],
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                              color: Color(0xff101323),
                              borderRadius: BorderRadius.circular(20.0)
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:
                            [
                              Text(
                                'AGE',
                                style: TextStyle(
                                    color: Colors.white24,
                                    fontSize: 20.0
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                '$age',
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 30.0,
                                    color: Colors.white
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:
                                [
                                  defaultFloatingActionButton(
                                      onPressed: ()
                                      {
                                        setState(() {
                                          if(age == 15)
                                            age = age;
                                          else
                                            age--;
                                        });
                                      },
                                      icon: Icons.remove,
                                      heroTag: 'age-'
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  defaultFloatingActionButton(
                                      onPressed: ()
                                      {
                                        setState(() {
                                          if(age == 100)
                                            age = age;
                                          else
                                            age++;
                                        });
                                      },
                                      icon: Icons.add,
                                      heroTag: 'age+'
                                  ),
                                ],
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                              color: Color(0xff101323),
                              borderRadius: BorderRadius.circular(20.0)
                          ),
                        ),
                      ),
                    ],
                  ),
                )
            ),
            Container(
              color: Colors.red,
              width: double.infinity,
              child: MaterialButton(
                onPressed: ()
                {
                  result = weight / pow(height / 100, 2);
                  print(result.round());

                  if(result <= 18)
                    {
                      state = 'Underweight';
                      message = "Your BMI result is quite low, you should eat more !";
                    }
                  else if(result > 18 && result < 25)
                    {
                      state = 'Normal';
                      message = "Your BMI result is good, keep working hard";
                    }
                  else
                    {
                      state = 'Overweight';
                      message = "Your BMI result is quite high, you should work harder !";
                    }

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => bmi_result(
                        result: result.round(),
                        state: state,
                        message: message,
                      ),
                    ),
                  );
                },
                child: Text(
                  'CALCULATE',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 20.0
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
