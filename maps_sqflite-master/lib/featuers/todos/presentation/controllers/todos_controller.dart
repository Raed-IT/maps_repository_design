import 'package:get/get.dart';
import 'package:maps_sqflite/featuers/todos/data/models/todo_model.dart';
import 'package:maps_sqflite/featuers/todos/domain/entities/todo.dart';
import 'package:maps_sqflite/featuers/todos/domain/repositories/todo_repository.dart';

class TodosController extends GetxController {
  final TodoRepository repository;
  TodosController(  this.repository);
  RxList<Todo > todos = <Todo >[].obs;
  Future<void> getTodos() async {
    todos.value = await repository.getTodos();
  }


}
