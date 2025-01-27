import 'package:get/get.dart';
import 'package:maps_sqflite/featuers/todos/data/datasources/locale_datasource.dart';
import 'package:maps_sqflite/featuers/todos/data/repositories/todo_repository.dart';
import 'package:maps_sqflite/featuers/todos/domain/repositories/todo_repository.dart';
import 'package:maps_sqflite/featuers/todos/presentation/controllers/add_todo_controller.dart';

class AddTodoBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(TodoLocaleDatasource());
    Get.put(TodoRepositoryImpl(Get.find<TodoLocaleDatasource>()));
    Get.put(AddTodoController(Get.find<TodoRepository>()));
  }
}
