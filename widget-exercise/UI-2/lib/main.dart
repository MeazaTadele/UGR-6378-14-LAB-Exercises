// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.purple,
        
        body: Column(
          
          children: [
            Expanded(child:Text('BMI Calculator', style: TextStyle(fontSize: 27, color: Colors.white),), flex: 1,),
            Expanded(child: Container(
              color: Colors.blue,
              child: Column(
                children: [
                  Row(

                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        margin:EdgeInsets.all(10),
                        color: Colors.black,
                        child:Column(
                          children: [Icon(Icons.male, size: 70, color: Colors.white,), Text('MALE', style: TextStyle(color: Colors.white),)],
                        ) ,
                      ), 
                      Container(
                        margin:EdgeInsets.all(10),
                        color: Colors.black,
                        child:Column(
                          children: [Icon(Icons.male, size: 70, color: Colors.white,), Text('MALE', style: TextStyle(color: Colors.white),)],
                        ) ,
                      ),
                    ],
                  ),


                  Row(
                    children: [],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        color: Colors.black,
                        child:Container(
                          margin: EdgeInsets.all(20),
                          child: Column(children: [Text('hieght',style: TextStyle(color: Colors.white),), Text('60',style: TextStyle(color: Colors.white,fontSize: 21)),Row(children: [IconButton(onPressed: (){}, icon: Icon(Icons.plus_one))],)],),
                        )
                      ),
                      Container(
                        color: Colors.black,
                        child:Container(
                          
                          margin: EdgeInsets.all(20),
                          child: Column(children: [Text('hieght',style: TextStyle(color: Colors.white),), Text('60',style: TextStyle(color: Colors.white,fontSize: 21)),Row(children: [IconButton(onPressed: (){}, icon: Icon(Icons.plus_one)),IconButton(onPressed: (){}, icon: Icon(Icons.plus_one))],)],),
                        )
                        )
                    ],
                  )
                ],
              )),flex: 3,
            
              
            ),
            Expanded( child:Text('Calculator', style: TextStyle(color: Colors.white, fontSize: 23),),flex: 1,)
            
          ],
        ),
      )
    );
  }
}
