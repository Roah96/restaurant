import 'package:flutter/material.dart';

class Searchfield extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      child: Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 17.0, vertical: 14.0),
          hintText:"Search my food",
          suffixIcon: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(30.0),
            child: Icon(
              Icons.search,
              color: Colors.black,
          ),
        ),
        border: InputBorder.none
      ),
      ),
      ),
    );
  }
}