import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OptionsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: 60,
      color: Colors.grey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            color: Colors.white,
            width: 59.5,
            height: 61.5,
            child: Center(
              child: Icon(
                Icons.edit,
                color: Colors.blue,
              ),
            ),
          ),
          Container(
            color: Colors.white,
            width: 59.5,
            height: 60,
            child: Center(
              child: Icon(
                Icons.delete,
                color: Colors.orangeAccent,
              ),
            ),
          )
        ],
      ),
    );
  }
}
