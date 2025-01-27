import 'package:maps_sqflite/core/database.dart';
import 'package:maps_sqflite/featuers/todos/data/models/todo_model.dart';
import 'package:sqflite/sqflite.dart';

class TodoLocaleDatasource {
  Future<List<Map<String, dynamic>>> queryAllTodos() async {
    final Database db = await AppDataBase.db;
    return await db.query('todos',);
  }

  Future<int> insertTodo(TodoModel task) async {
    final Database db = await AppDataBase.db;
    return await db.insert('todos', task.toMap());
  }

  Future<int> updateTodo(TodoModel todo) async {
    final Database db = await AppDataBase.db;
    return await db
        .update('todos', todo.toMap(), where: 'id = ?', whereArgs: [todo.id]);
  }

  Future<int> deleteTodo(TodoModel todo) async {
    final Database db = await AppDataBase.db;
    return await db.delete('todos', where: 'id = ?', whereArgs: [todo.id]);
  }
}
