import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ListViewExample(),
    );
  }
}

class ListViewExample extends StatefulWidget {
  const ListViewExample({Key? key}) : super(key: key);

  @override
  _ListViewExampleState createState() => _ListViewExampleState();
}

class _ListViewExampleState extends State<ListViewExample> {
  final List<String> _items = ['a', 'b', 'c', 'd', 'e', 'f', 'g'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Example'),
      ),
      body: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('list ${_items[index]}'),
          );
        },
      ),
    );
  }
}
