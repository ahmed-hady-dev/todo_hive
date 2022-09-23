import 'package:hive/hive.dart';

class ToDoDatabase {
  final _myBox = Hive.box('todo');

  Box get myBox => _myBox;

  List todoList = [];

  void createInitialData() {
    todoList = [
      ['todo 1', false],
      ['todo 2', false],
    ];
  }

  void loadData() {
    todoList = _myBox.get('TODOLIST');
  }

  void updateDatabase() {
    _myBox.put('TODOLIST', todoList);
  }
}
