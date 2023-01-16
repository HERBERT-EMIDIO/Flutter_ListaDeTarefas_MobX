// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ListController on ListControllerBase, Store {
  Computed<bool>? _$isFormValidComputed;

  @override
  bool get isFormValid =>
      (_$isFormValidComputed ??= Computed<bool>(() => super.isFormValid,
              name: 'ListControllerBase.isFormValid'))
          .value;
  Computed<VoidCallback?>? _$addTodoPressedComputed;

  @override
  VoidCallback? get addTodoPressed => (_$addTodoPressedComputed ??=
          Computed<VoidCallback?>(() => super.addTodoPressed,
              name: 'ListControllerBase.addTodoPressed'))
      .value;

  late final _$newTodoTitleAtom =
      Atom(name: 'ListControllerBase.newTodoTitle', context: context);

  @override
  String get newTodoTitle {
    _$newTodoTitleAtom.reportRead();
    return super.newTodoTitle;
  }

  @override
  set newTodoTitle(String value) {
    _$newTodoTitleAtom.reportWrite(value, super.newTodoTitle, () {
      super.newTodoTitle = value;
    });
  }

  late final _$ListControllerBaseActionController =
      ActionController(name: 'ListControllerBase', context: context);

  @override
  void setNewTodoTitle(String v) {
    final _$actionInfo = _$ListControllerBaseActionController.startAction(
        name: 'ListControllerBase.setNewTodoTitle');
    try {
      return super.setNewTodoTitle(v);
    } finally {
      _$ListControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addTodo() {
    final _$actionInfo = _$ListControllerBaseActionController.startAction(
        name: 'ListControllerBase.addTodo');
    try {
      return super.addTodo();
    } finally {
      _$ListControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
newTodoTitle: ${newTodoTitle},
isFormValid: ${isFormValid},
addTodoPressed: ${addTodoPressed}
    ''';
  }
}
