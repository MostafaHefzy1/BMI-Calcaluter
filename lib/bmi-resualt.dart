import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenResult extends StatelessWidget {

  late final double result  ;
  late final bool ismale ;
  late final double age ;

  ScreenResult(
      {
        required this.result ,
        required this.age  ,
        required this.ismale ,
      }) ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Center(
          child: Text(
            'BMI Result' ,
          ),
        ),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Text(
              'Gender : ${ismale ? 'Male':'female' }' ,
              style: TextStyle(
                fontSize:25.0  ,
                fontWeight:FontWeight.bold  ,
              ),
            ) ,
            Text(

              'Result : ${result.round()}' ,
              style: TextStyle(
                fontSize:25.0  ,
                fontWeight:FontWeight.bold  ,
              ),
            ) ,
            Text(
              'Age : ${age.round()}' ,
              style: TextStyle(
                fontSize:25.0  ,
                fontWeight:FontWeight.bold  ,
              ),
            ) ,


          ],
        ),
      ),



    );
  }
}
