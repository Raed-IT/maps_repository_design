import 'package:get/get.dart';
import 'package:maps_sqflite/featuers/todos/data/datasources/locale_datasource.dart';
import 'package:maps_sqflite/featuers/todos/data/repositories/todo_repository.dart';
import 'package:maps_sqflite/featuers/todos/domain/repositories/todo_repository.dart';
import 'package:maps_sqflite/featuers/todos/presentation/controllers/todos_controller.dart';

class TodosBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(TodoLocaleDatasource());
    Get.put(TodoRepositoryImpl(Get.find<TodoLocaleDatasource>()));
    Get.put(TodosController(Get.find<TodoRepository>()));
  }
}
