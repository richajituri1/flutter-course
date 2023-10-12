import 'package:todo/index.dart';

class Constants {
  static const List<Todo> todos = [
    Todo(
      text: 'Learn Flutter', 
      priority: Priority.urgent,
    ),
    Todo(
      text: 'Practice Flutter', 
      priority: Priority.normal,
    ),
    Todo(
      text: 'Explore other courses', 
      priority: Priority.low,
    ),
  ];
}
