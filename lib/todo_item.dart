import 'package:flutter/material.dart';
import 'package:todo/index.dart';

class TodoItem extends StatelessWidget {

  const TodoItem({required this.priority,required this.text,super.key});


  final String text;
  final Priority priority;

  @override
  Widget build(BuildContext context) {

    return _buildTodoItem();
  }


  Widget _buildTodoItem() {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          _buildIcon(),
          const SizedBox(width: 12),
          Text(text),
        ],
      ),
    );
  }

  Widget _buildIcon() {
    IconData icon = Icons.low_priority;

    if (priority == Priority.urgent) {
      icon = Icons.notifications_active;
    } else if (priority == Priority.normal) {
      icon = Icons.list;
    }

    return Icon(icon);
  }
}



