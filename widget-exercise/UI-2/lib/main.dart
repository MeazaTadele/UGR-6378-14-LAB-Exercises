import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _currentSliderValue = 50; 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.purple,
        body: Column(
          children: [
            Expanded(
              child: Text(
                'BMI Calculator',
                style: TextStyle(fontSize: 27, color: Colors.white),
              ),
              flex: 1,
            ),
            Expanded(
              child: Container(
                color: Colors.blue,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          color: Colors.black,
                          child: Column(
                            children: [
                              Icon(Icons.male, size: 70, color: Colors.white),
                              Text(
                                'MALE',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          color: Colors.black,
                          child: Column(
                            children: [
                              Icon(Icons.male, size: 70, color: Colors.white),
                              Text(
                                'MALE',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      // slider
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(10),
                            color: Colors.black,
                            child: Column(
                              children: [
                                Text(
                                  'Height',
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  '${_currentSliderValue.toStringAsFixed(1)}',
                                  style: TextStyle(color: Colors.white, fontSize: 18),
                                ),
                                SizedBox(height: 5),
                                Slider(
                                  value: _currentSliderValue,
                                  min: 0,
                                  max: 100,
                                  divisions: 100,
                                  onChanged: (double value) {
                                    setState(() {
                                      _currentSliderValue = value;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          color: Colors.black,
                          child: Container(
                            margin: EdgeInsets.all(20),
                            child: Column(
                              children: [
                                Text(
                                  'height',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  '60',
                                  style: TextStyle(color: Colors.white, fontSize: 21),
                                ),
                                Row(
                                  children: [
                                    IconButton(onPressed: () {}, icon: Icon(Icons.plus_one)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          color: Colors.black,
                          child: Container(
                            margin: EdgeInsets.all(20),
                            child: Column(
                              children: [
                                Text(
                                  'height',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  '60',
                                  style: TextStyle(color: Colors.white, fontSize: 21),
                                ),
                                Row(
                                  children: [
                                    IconButton(onPressed: () {}, icon: Icon(Icons.plus_one)),
                                    IconButton(onPressed: () {}, icon: Icon(Icons.plus_one)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              flex: 3,
            ),
            Expanded(
              child: Text(
                'Calculator',
                style: TextStyle(color: Colors.white, fontSize: 23),
              ),
              flex: 1,
            )
          ],
        ),
      ),
    );
  }
}
