import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bmi_result extends StatelessWidget {

  final int result ;
  final String state;
  final String message;

  bmi_result({
    required this.result,
    required this.state,
    required this.message
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'BMI CALCULATOR'
        ),
        backgroundColor: Color(0xff0a0f1e),
      ),
      body: Container(
        color: Color(0xff0a0f1e),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Your Result',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w900
                ),
              ),
            ),
            Container(
              width: double.maxFinite,
              height: 400.0,
              margin: EdgeInsetsDirectional.all(20.0),
              decoration: BoxDecoration(
                  color: Color(0xff262a4b),
                  borderRadius: BorderRadiusDirectional.circular(20.0)
              ),
              child: Column(
                children:
                [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.only(
                          top: 50.0
                      ),
                      child: Text(
                        '${state}',
                        style: TextStyle(
                            color: Colors.lightGreen,
                            fontSize: 20.0
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      '$result',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 70.0,
                          fontWeight: FontWeight.w900
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0
                      ),
                      child: Text(
                        '${message}',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 60.0,
              width: double.infinity,
              margin: EdgeInsetsDirectional.only(
                  top: 86.5
              ),
              child: MaterialButton(
                color: Colors.red,
                onPressed: ()
                {
                  Navigator.pop(context);
                },
                child: Text(
                  'RECALCULATE',
                  style: TextStyle(
                      color: Colors.white,
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
