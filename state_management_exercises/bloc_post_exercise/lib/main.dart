
import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;


class ApiService {
  final String baseUrl = 'https://jsonplaceholder.typicode.com/todos';

  Future<List<dynamic>> fetchTodos() async {
    final response = await http.get(Uri.parse(baseUrl));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load todos');
    }
  }
}

// BLoC Events
abstract class TodoEvent extends Equatable {
  const TodoEvent();

  @override
  List<Object?> get props => [];
}

class FetchTodos extends TodoEvent {}

// BLoC States
abstract class TodoState extends Equatable {
  const TodoState();

  @override
  List<Object?> get props => [];
}

class TodosInitial extends TodoState {}

class TodosLoading extends TodoState {}

class TodosLoaded extends TodoState {
  final List<dynamic> todos;
  const TodosLoaded(this.todos);

  @override
  List<Object?> get props => [todos];
}

class TodosError extends TodoState {
  final String message;
  const TodosError(this.message);

  @override
  List<Object?> get props => [message];
}

// BLoC
class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final ApiService apiService;

  TodoBloc({required this.apiService}) : super(TodosInitial()) {
    on<FetchTodos>((event, emit) async {
      emit(TodosLoading());
      try {
        final todos = await apiService.fetchTodos();
        emit(TodosLoaded(todos));
      } catch (e) {
        emit(TodosError(e.toString()));
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
      title: 'BLoC Todos',
      home: BlocProvider(
        create: (context) => TodoBloc(apiService: ApiService()),
        child: TodosScreen(),
      ),
    );
  }
}


class TodosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    context.read<TodoBloc>().add(FetchTodos());

    return Scaffold(
      appBar: AppBar(
        title: Text('Todos with BLoC'),
      ),
      body: BlocBuilder<TodoBloc, TodoState>(
        builder: (context, state) {
          if (state is TodosLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is TodosLoaded) {
            return ListView.builder(
              itemCount: state.todos.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(state.todos[index]['title']),
                );
              },
            );
          } else if (state is TodosError) {
            return Center(child: Text(state.message));
          }
          return Center(child: Text('Start fetching todos by pressing the button'));
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<TodoBloc>().add(FetchTodos()),
        tooltip: 'Fetch Todos',
        child: Icon(Icons.download),
      ),
    );
  }
}