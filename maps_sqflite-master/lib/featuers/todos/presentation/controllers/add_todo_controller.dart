import 'package:get/get.dart';
import 'package:maps_sqflite/featuers/todos/domain/repositories/todo_repository.dart';

class AddTodoController extends GetxController {
  final TodoRepository repository;
  AddTodoController(this.repository);
}
