import 'dart:developer';
import 'dart:ui';

import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';

import '../models/todo.dart';

part 'list_controller.g.dart';

class ListController = ListControllerBase with _$ListController;

abstract class ListControllerBase with Store {
  final TextEditingController addTodoTextControll = TextEditingController();

  @observable
  String newTodoTitle = '';
  @action
  void setNewTodoTitle(String v) => newTodoTitle = v;

  @computed
  bool get isFormValid => newTodoTitle.isNotEmpty;

  @computed
  VoidCallback? get addTodoPressed => isFormValid ? addTodo : null;

  ObservableList<Todo> todoList = ObservableList<Todo>();

  @action
  void addTodo() {
    todoList.insert(0, Todo(newTodoTitle));
    addTodoTextControll.clear();
    newTodoTitle = '';
    print(newTodoTitle);
  }
}
