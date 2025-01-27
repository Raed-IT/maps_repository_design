import 'package:maps_sqflite/featuers/todos/data/datasources/locale_datasource.dart';
import 'package:maps_sqflite/featuers/todos/data/models/todo_model.dart';
import 'package:maps_sqflite/featuers/todos/domain/entities/todo.dart';
import 'package:maps_sqflite/featuers/todos/domain/repositories/todo_repository.dart';

class TodoRepositoryImpl extends TodoRepository {
  final TodoLocaleDatasource datasource;

  TodoRepositoryImpl(this.datasource);

  @override
  Future<void> addTodo(TodoModel todo) async {
    datasource.insertTodo(todo);
  }

  @override
  Future<void> updateTodo(TodoModel todo) async {
    await datasource.updateTodo(todo);
  }

  @override
  Future<void> deleteTodo(TodoModel todo) async {
    await datasource.deleteTodo(todo);
  }

  @override
  Future<List<Todo>> getTodos() async {
    final taskMaps = await datasource.queryAllTodos();
    return taskMaps.map((map) => TodoModel.fromMap(map)).toList();
  }
}
