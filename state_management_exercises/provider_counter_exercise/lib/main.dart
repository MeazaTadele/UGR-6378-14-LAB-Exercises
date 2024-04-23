

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Counter with ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }

  void decrement() {
    _count--;
    notifyListeners();
  }
}


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Counter(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Counter App',
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
      ),
      
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ Consumer<Counter>(
          builder: (context, counter, _) => Text(
            'Count: ${counter.count}',
            style: TextStyle(fontSize: 24),
          ),
        ),
        
        ElevatedButton(
          onPressed: (){
            Provider.of<Counter>(context,listen:false).increment();}, 
          child: Icon(Icons.add)),
        ElevatedButton(
          onPressed: (){
            Provider.of<Counter>(context,listen: false).decrement();} , 
          child: Icon(Icons.remove))],
        )
      ),

    );
  }
}