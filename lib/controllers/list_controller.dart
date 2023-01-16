import 'dart:developer';

import 'package:email_validator/email_validator.dart';
import 'package:mobx/mobx.dart';

part 'list_controller.g.dart';

class ListController = ListControllerBase with _$ListController;

abstract class ListControllerBase with Store {
  @observable
  String newTodoTitle = '';
  @action
  void setNewTodoTitle(String v) => newTodoTitle = v;

  @computed
  bool get isFormValid => newTodoTitle.isNotEmpty;
}
