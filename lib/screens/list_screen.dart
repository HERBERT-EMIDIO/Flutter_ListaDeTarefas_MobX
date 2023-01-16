import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_base/controllers/list_controller.dart';
import 'package:mobx_base/widgets/custom_icon_button.dart';
import 'package:mobx_base/widgets/custom_text_field.dart';

import 'login_screen.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  final ListController controller = ListController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          margin: const EdgeInsets.fromLTRB(32, 0, 32, 32),
          child: Column(
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text(
                      'Tarefas',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 32),
                    ),
                    IconButton(
                      icon: const Icon(Icons.exit_to_app),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (_) => const LoginScreen()));
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 16,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: <Widget>[
                        Observer(builder: (_) {
                          return CustomTextField(
                            controller: controller.addTodoTextControll,
                            hint: 'Tarefa',
                            onChanged: controller.setNewTodoTitle,
                            suffix: CustomIconButton(
                              radius: 32,
                              iconData: Icons.add,
                              onTap: controller.addTodoPressed,
                            ),
                          );
                        }),
                        const SizedBox(
                          height: 8,
                        ),
                        Expanded(child: Observer(
                          builder: (_) {
                            return ListView.separated(
                              itemCount: controller.todoList.length,
                              itemBuilder: (_, index) {
                                final todo = controller.todoList[index];

                                return Observer(builder: (_) {
                                  return ListTile(
                                    title: Text(
                                      todo.title,
                                      style: TextStyle(
                                          color: todo.done
                                              ? Colors.grey[500]
                                              : Colors.black,
                                          decoration: todo.done
                                              ? TextDecoration.lineThrough
                                              : null),
                                    ),
                                    onTap: todo.ToggleDone,
                                  );
                                });
                              },
                              separatorBuilder: (_, __) {
                                return const Divider();
                              },
                            );
                          },
                        )),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
