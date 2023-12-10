import 'package:flutter/material.dart';

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  String greetingMessage = "";
  final TextEditingController _controller = TextEditingController();
  void greetUsers() {
    setState(() {
      greetingMessage = "Hello ${_controller.text}";
      _controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(greetingMessage, style: const TextStyle(fontSize: 20)),
          TextField(
              controller: _controller,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: "Enter your name")),
          ElevatedButton(onPressed: greetUsers, child: const Text("Tap me"))
        ]),
      ),
    ));
  }
}
