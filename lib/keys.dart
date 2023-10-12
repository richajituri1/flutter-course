import 'package:flutter/material.dart';
import 'package:todo/index.dart';

class Todo {
  const Todo({required this.text,required this.priority});

  final String text;
  final Priority priority;
}

class Keys extends StatefulWidget {
  const Keys({super.key});

  @override
  State<Keys> createState() {
    return _KeysState();
  }
}

class _KeysState extends State<Keys> {
  var _order = 'asc';

  List<Todo> get _orderedTodos {
    final sortedTodos = List.of(Constants.todos);
    sortedTodos.sort((a, b) {
      final bComesAfterA = a.text.compareTo(b.text);
      return _order == 'asc' ? bComesAfterA : -bComesAfterA;
    });
    return sortedTodos;
  }

  void _changeOrder() {
    setState(() {
      _order = _order == 'asc' ? 'desc' : 'asc';
    });
  }

  Widget _buildButton() {
    return TextButton.icon(
      onPressed: _changeOrder, 
      icon: Icon(
        _order == 'asc' ? Icons.arrow_downward : Icons.arrow_upward,
        ),
        label: Text('Sort ${_order == 'asc' ? 'Descendin' : 'Ascending'}'),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: _buildButton(),
        ),
        Expanded(
          child: Column(
            children: [
              for (final todo in _orderedTodos)
                CheckableTodoItem(
                  key: ValueKey(todo.text),
                  text : todo.text,
                  priority: todo.priority,
                ),
            ],
          ),
        ),
      ],
    );
  }
}