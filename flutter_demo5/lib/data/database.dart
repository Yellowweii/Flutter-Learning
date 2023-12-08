import 'package:hive/hive.dart';

class TodoDataBase {
  List todoList = [];
  final box = Hive.box('myBox');

  void createInitialData() {
    box.put('todoList', [
      ['Make Tutorial', false],
      ['Do Exercise', false],
      ['Take a bath', false],
      ['Go to sleep', false],
    ]);
  }

  void loadData() {
    todoList = box.get('todoList');
  }

  void updateData() {
    box.put('todoList', todoList);
  }
}
