
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Events
enum CounterEvent { increment, decrement }

// counter_state
class CounterState {
  final int count;
  CounterState({required this.count});
}

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(count: 0)) {
    on<CounterEvent>((event, emit) {
      switch (event) {
        case CounterEvent.increment:
          emit(CounterState(count: state.count + 1));
          break;
        case CounterEvent.decrement:
          emit(CounterState(count: state.count - 1));
          break;
      }
    });
  }
}


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Counter App with Bloc',
      home: BlocProvider(
        create: (context) => CounterBloc(),
        child: MyHomePage(),
      ),
    );
  }
}


class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App with Bloc'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return Text(
                  'Count: ${state.count}',
                  style: TextStyle(fontSize: 24),
                );
              },
            ),
            ElevatedButton(
              onPressed: () => context.read<CounterBloc>().add(CounterEvent.increment),
              child: Icon(Icons.add),
            ),
            ElevatedButton(
              onPressed: () => context.read<CounterBloc>().add(CounterEvent.decrement),
              child: Icon(Icons.remove),
            ),
          ],
        ),
      ),
    );
  }
}