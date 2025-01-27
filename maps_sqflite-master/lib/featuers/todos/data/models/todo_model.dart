import 'package:maps_sqflite/featuers/todos/domain/entities/todo.dart';

class TodoModel extends Todo {
  TodoModel(
      {super.id,
      required super.title,
      required super.content,
      required super.status});

  factory TodoModel.fromMap(Map<String, dynamic> map) {
    return TodoModel(
      id: map['id'],
      title: map['title'],
      content: map['content'],
      status: map['status'],
    );
  }

  Map<String, dynamic> toMap() {
    return {'id': id, 'title': title, "content": content, "status": status};
  }
}
