import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'todo.g.dart';

class Todo = TodoBase with _$Todo;

abstract class TodoBase with Store {

  TodoBase(this.title);

  final String title;

  @observable
  bool done = false;

  @action
  void ToggleDone() => done = !done;
}
