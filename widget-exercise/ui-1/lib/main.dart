// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

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
        backgroundColor: Colors.grey[50],

        appBar: AppBar(
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back),),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.logout)),
            IconButton(onPressed: (){}, icon: Icon(Icons.settings))],
        ),
        body: Column(
          children: [
            Container(
          child: Image.asset('assets/a.jpg'),
          margin: EdgeInsets.all(10),
        
          
        ),
        
        Container(
          child: Text('1975 Porsche 911 Carrera', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 27),),
          margin: EdgeInsets.all(10),
        ),

        Container(
          margin: EdgeInsets.only(left:10),
          
          
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,

                children: [
                  Icon(Icons.thumb_up),
                  Text('0')
                ],
              ),
              Row(
                children: [
                  Icon(Icons.comment),
                  Text('0')
                ],
              ),
              Row(
                children: [
                  Icon(Icons.share),
                  Text('Share')
                ],
              )
            ],
          ) ,
        ),

        Container(
        
          margin: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Essential information', style: TextStyle(fontWeight: FontWeight.bold),),
              Text('1 of 3 done'),
            ],
          ),
        ),

        Container(
          margin: EdgeInsets.all(5),
          child: Expanded(
            child: Container(
              color: Colors.black,
              height: 1,),),
          
        ),



          ],
        )
      


      ),

    );
      
  }
}
