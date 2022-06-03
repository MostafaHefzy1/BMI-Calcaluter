import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'bmi-resualt.dart';
class Bmicalculator extends StatefulWidget {

  @override
  _BmicalculatorState createState() => _BmicalculatorState();
}

class _BmicalculatorState extends State<Bmicalculator> {



  bool ismale = true ;
  double heigth =120 ;
  double wight = 60 ;
  double Age = 25 ;

  // Color color = Colors.deepPurple ;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor:Colors.deepPurpleAccent ,
        title:Center(
            child: Text('BMI Calculator')
        ),
      ),
      body:Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: GestureDetector(
                      onTap:()
                      {
                        setState(()
                        {
                          ismale = true ;

                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image:AssetImage('Assets/images/Male-Symbol-Sign.jpg'),
                              width:70,
                              height: 70,
                            ),
                            SizedBox(
                              height:15,
                            ),
                            Text(
                              'Male' ,
                              style: TextStyle(
                                fontSize:20  ,
                                fontWeight:FontWeight.bold ,
                              ),
                            ),
                          ],
                        ),
                        decoration:BoxDecoration(
                          borderRadius:BorderRadius.circular(10) ,
                          color:ismale?Colors.deepPurple:Colors.grey ,
                        ),
                      ),
                    ),

                  ),
                ) ,
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: GestureDetector(
                      onTap:(){
                        setState(()
                        {
                          ismale = !true ;
                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image:AssetImage('Assets/images/SIGN203.jpg'),
                              width:70,
                              height: 70,
                            ),
                            SizedBox(
                              height:15,
                            ),
                            Text(
                              'Female' ,
                              style: TextStyle(
                                fontSize:20  ,
                                fontWeight:FontWeight.bold ,
                              ),
                            ),
                          ],
                        ),
                        decoration:BoxDecoration(
                          borderRadius:BorderRadius.circular(10) ,
                          color:!ismale?Colors.deepPurple:Colors.grey ,
                        ),
                      ),
                    ),

                  ),
                ) ,

              ],
            ),
          ) ,
          Expanded(
            child: Padding(
              padding: const EdgeInsetsDirectional.only(
                end:20 ,
                start:20 ,
              ),
              child: Container(
                decoration:BoxDecoration(
                  borderRadius:BorderRadius.circular(10) ,
                  color:Colors.grey ,
                ),
                child: Column(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: [
                    Text(
                      'Heigth' ,
                      style: TextStyle(
                        fontSize:20  ,
                        fontWeight:FontWeight.bold ,
                      ),
                    ),
                    Row(
                      crossAxisAlignment:CrossAxisAlignment.baseline,
                      mainAxisAlignment:MainAxisAlignment.center,
                      textBaseline:TextBaseline.alphabetic,
                      children: [
                        Text(
                          '${heigth.round()}' ,
                          style: TextStyle(
                            fontSize:40  ,
                            fontWeight:FontWeight.w900 ,
                          ),
                        ),
                        Text(
                          'CM' ,
                          style: TextStyle(
                            fontSize:15  ,
                            fontWeight:FontWeight.bold ,
                          ),
                        ),
                      ],
                    ) ,
                    Slider(
                      value: heigth,
                      max:250,
                      min: 30,
                      onChanged:(value){
                        setState(() {
                          heigth = value  ;
                        });
                      },
                    ),

                  ],

                ),
              ),
            ),
          ) ,
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row  (
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      decoration:BoxDecoration(
                          borderRadius:BorderRadius.circular(10) ,
                          color:Colors.grey),
                      child: Column(
                        crossAxisAlignment:CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Weight' ,
                            style: TextStyle(
                              fontSize:20  ,
                              fontWeight:FontWeight.bold ,
                            ),
                          ),
                          Text(
                            '${wight.round()}' ,
                            style: TextStyle(
                              fontSize:40  ,
                              fontWeight:FontWeight.w900 ,
                            ),
                          ),
                          Row(
                            mainAxisAlignment:MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed:(){
                                  setState(() {
                                    wight-- ;
                                  });
                                } ,
                                mini: true,
                                child:Icon(
                                  Icons.remove ,
                                ),
                              ),
                              FloatingActionButton(
                                onPressed:(){
                                  setState(() {
                                    wight++ ;
                                  });
                                } ,
                                mini: true,
                                child:Icon(
                                  Icons.add ,
                                ),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width:10,
                  ),
                  Expanded(
                    child: Container(
                      decoration:BoxDecoration(
                          borderRadius:BorderRadius.circular(10) ,
                          color:Colors.grey),
                      child: Column(
                        children: [
                          Text(
                            'AGE' ,
                            style: TextStyle(
                              fontSize:20  ,
                              fontWeight:FontWeight.bold ,
                            ),
                          ),
                          Text(
                            '${Age.round()}' ,
                            style: TextStyle(
                              fontSize:40  ,
                              fontWeight:FontWeight.w900 ,
                            ),
                          ),
                          Row(
                            mainAxisAlignment:MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed:(){
                                  setState(() {
                                    Age-- ;
                                  });
                                } ,
                                mini: true,
                                child:Icon(
                                  Icons.remove ,
                                ),
                              ),
                              FloatingActionButton(
                                onPressed:(){
                                  setState(() {
                                    Age++ ;

                                  });
                                } ,
                                mini: true,
                                child:Icon(
                                  Icons.add ,
                                ),
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
          ) ,
          Container(
            color:Colors.deepPurpleAccent,
            width:double.infinity,
            height:60,
            child: MaterialButton(
              onPressed:()
              {
                var result = wight / pow(heigth/100,2) ;
                print(result.round()) ;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder   : (context)  => ScreenResult(
                      age:Age,
                      ismale:ismale,
                      result:result,) ,
                  ),
                ) ;
              } ,
              child:Text(
                'Calculate' ,
                style:TextStyle(
                  color:Colors.white  ,
                  fontSize:30.0 ,
                ),
              ),
            ),
          ) ,
        ],
      ),

    );
  }
}
