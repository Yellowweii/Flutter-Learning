import 'package:flutter/material.dart';

import 'package:flutter_demo5/components/TodoTile.dart';
import 'package:flutter_demo5/components/AlertBox.dart';
import 'package:flutter_demo5/data/database.dart';
import 'package:hive/hive.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TodoDataBase db = TodoDataBase();
  final box = Hive.box('myBox');
  final TextEditingController controller = TextEditingController();
  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertBox(
          controller: controller,
          onSave: () {
            setState(() {
              db.todoList.add([controller.text, false]);
              db.updateData();
            });
            controller.clear();
            Navigator.pop(context);
          },
          onCancel: () {
            Navigator.pop(context);
          },
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    if (box.get('todoList') == null) {
      db.createInitialData();
    } else {
      db.loadData();
    }
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
            itemCount: db.todoList.length,
            itemBuilder: (context, index) {
              return TodoTile(
                taskName: db.todoList[index][0],
                taskCompleted: db.todoList[index][1],
                onChanged: (bool? value) {
                  setState(() {
                    db.todoList[index][1] = value;
                    db.updateData();
                  });
                },
                onDelete: (context) {
                  setState(() {
                    db.todoList.removeAt(index);
                    db.updateData();
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
