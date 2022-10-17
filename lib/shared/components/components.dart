import 'package:flutter/material.dart';

Widget defaultGestureDetector(
        {required Function onTap,
        required IconData icon,
        required String gender,
        required BoxDecoration decoration}) =>
    Expanded(
      child: GestureDetector(
        onTap: () {
          onTap();
        },
        child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  size: 70.0,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  '${gender.toUpperCase()}',
                  style: TextStyle(fontSize: 18.0, color: Colors.white24),
                ),
              ],
            ),
            decoration: decoration),
      ),
    );

Widget defaultFloatingActionButton({
  required Function onPressed,
  required IconData icon,
  required String heroTag
}) =>
    FloatingActionButton(
      onPressed: () {
        onPressed();
      },
      child: Icon(icon),
      mini: true,
      backgroundColor: Color(0xff424553),
      heroTag: '${heroTag}',
    );
