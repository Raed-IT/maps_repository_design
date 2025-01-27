import 'package:maps_sqflite/featuers/todos/data/models/todo_model.dart';
import 'package:maps_sqflite/featuers/todos/domain/entities/todo.dart';

abstract class TodoRepository {
  Future<List<Todo>> getTodos();

  Future<void> addTodo(TodoModel todo);

  Future<void> updateTodo(TodoModel todo);

  Future<void> deleteTodo(TodoModel todo);
}
