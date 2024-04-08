import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Demo',
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (context) => ScreenOne());
          case '/second':
            return MaterialPageRoute(builder: (context) => ScreenTwo());
        }
      },
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
          onPressed: () { Navigator.pushNamed(context, '/second');},
          child: Text('next'),)
          
          
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
        child: FloatingActionButton(onPressed: () { Navigator.pop(context); },
        child: Text('back'),),
      ),
    );
  }
}
