import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key, required this.tables});
  final String tables;

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  String text = '';

  @override
  void initState() {
    super.initState();
    table();
  }

  void table() {
    int table = int.parse(widget.tables);
    for (int i = 1; i <= 10; i++) {
      text += '\n$table X $i = ${table * i}';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          'Table',
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Center(
            child: Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                text,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    foreground: Paint()
                      ..strokeWidth = 3
                      ..color = Colors.white),
              ),
            ),
          );
        },
      ),
    );
  }
}
