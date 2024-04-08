
import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'navigation',
      home: ScreenOne()
    );
  }
}

class ScreenOne extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    
    return Scaffold(
      appBar: AppBar(title: Text('screen one'),),
      body: Center(
        child: ElevatedButton(
          onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => ScreenTwo(),
                                                                    settings: RouteSettings(arguments: 'text dataaaa'))); },
          child: Text('next')),
          
      )
    );
  }
}

class ScreenTwo extends StatelessWidget{
  @override

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('screen two'),),
      body: Center(
        child: FloatingActionButton(onPressed: () { Navigator.pop(context,'yes'); },
        child: Text('back'),),
      ),
    );
  }
}