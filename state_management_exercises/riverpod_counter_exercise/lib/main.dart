
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    ProviderScope(child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

final counterProvider = StateProvider<int>((ref) => 0);

class HomeScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int count = ref.watch(counterProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App with Riverpod'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Text(
              '$count',
              style: Theme.of(context).textTheme.headline4,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 20,),
                FloatingActionButton(
                  onPressed: () => ref.read(counterProvider.notifier).state++,
                  tooltip: 'Increment',
                  child: Icon(Icons.add),
                ),

                SizedBox(height: 20,),
                FloatingActionButton(
                  onPressed: () => ref.read(counterProvider.notifier).state--,
                  tooltip: 'Decrement',
                  child: Icon(Icons.remove),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
