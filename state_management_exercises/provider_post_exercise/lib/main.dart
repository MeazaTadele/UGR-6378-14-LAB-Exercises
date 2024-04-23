

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

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

class TodoProvider with ChangeNotifier {
  List<dynamic> _todos = [];
  bool _isLoading = false;
  String _errorMessage = '';

  List<dynamic> get todos => _todos;
  bool get isLoading => _isLoading;
  String get errorMessage => _errorMessage;

  final ApiService apiService;

  TodoProvider({required this.apiService}) {
    fetchTodos();
  }

  Future<void> fetchTodos() async {
    _isLoading = true;
    _errorMessage = '';
    notifyListeners();
    try {
      _todos = await apiService.fetchTodos();
    } catch (e) {
      _errorMessage = e.toString();
      _todos = [];
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => TodoProvider(apiService: ApiService()),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Provider Todos',
      home: TodosScreen(),
    );
  }
}

class TodosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todos with provider'),
      ),
      body: Consumer<TodoProvider>(
        builder: (context, provider, child) {
          if (provider.isLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (provider.errorMessage.isNotEmpty) {
            return Center(child: Text(provider.errorMessage));
          } else if (provider.todos.isEmpty) {
            return Center(child: Text('No todos found'));
          }
          return ListView.builder(
            itemCount: provider.todos.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(provider.todos[index]['title']),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Provider.of<TodoProvider>(context, listen: false).fetchTodos(),
        tooltip: 'Fetch Todos',
        child: Icon(Icons.download),
      ),
    );
  }
}
