import 'package:flutter/material.dart';

import 'package:flutter_demo5/components/TodoTile.dart';
import 'package:flutter_demo5/components/AlertBox.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int? i;
  List todoList = [
    ['Make Tutorial', false],
    ['Do Exercise', false],
    ['Take a bath', false],
    ['Go to sleep', false],
  ];

  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        String newTaskName = "";
        return AlertBox();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow[200],
        appBar: AppBar(
          title: Text(
            "TO DO",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.yellow,
          centerTitle: true,
          elevation: 0.0,
        ),
        body: ListView.builder(
            itemCount: todoList.length,
            itemBuilder: (context, index) {
              return TodoTile(
                taskName: todoList[index][0],
                taskCompleted: todoList[index][1],
                onChanged: (bool? value) {
                  setState(() {
                    todoList[index][1] = value;
                  });
                },
              );
            }),
        floatingActionButton: FloatingActionButton(
          onPressed: createNewTask,
          child: Icon(Icons.add),
          backgroundColor: Colors.yellow,
        ));
  }
}
