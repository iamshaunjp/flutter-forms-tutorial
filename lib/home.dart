import 'package:flutter/material.dart';
import 'package:flutter_forms_files/models/todo.dart';
import 'package:flutter_forms_files/todo_list.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final _formGlobalKey = GlobalKey<FormState>();

  final List<Todo> todos = [
    const Todo(
      title: 'Buy milk', 
      description: 'There is no milk left in the fridge!',
      priority: Priority.high
    ),
    const Todo(
      title: 'Make the bed', 
      description: 'Keep things tidy please..',
      priority: Priority.low
    ),
    const Todo(
      title: 'Pay bills', 
      description: 'The gas bill needs paying ASAP.',
      priority: Priority.urgent
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List'),
        centerTitle: true,
        backgroundColor: Colors.grey[200],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(child: TodoList(todos: todos)),
        
            // form stuff below here
            Form(
              key: _formGlobalKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [

                  // todo title


                  // todo description


                  // priority
                 

                  // submit button
                  const SizedBox(height: 20),
                  FilledButton(
                    onPressed: () {},
                    style: FilledButton.styleFrom(
                      backgroundColor: Colors.grey[800],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    child: const Text('Add'),
                  )
                ],
              ), 
            )
            
          ],
        ),
      ),
    );
  }
}