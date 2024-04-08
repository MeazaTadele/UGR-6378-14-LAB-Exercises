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
          onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => screenY(),
                                                                    settings: RouteSettings(arguments: 'text data from screen one'))); },
          child: Text('next')),
          
      )
    );
  }
}
class screenY extends StatelessWidget{
  @override

  Widget build(BuildContext context){
    final text = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(title: Text('screen y'),),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text),
            ElevatedButton(onPressed: (){Navigator.pop(context,'yes');}, child: Text('back'))
          ],
        ),
      )
    );
  }
}