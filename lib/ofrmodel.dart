import 'package:flutter/material.dart';

class Model extends StatefulWidget {
  final String value;
  const Model({Key? key, required this.value}) : super(key: key);

  @override
  State<Model> createState() => _ModelState();
}

class _ModelState extends State<Model> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'this is out of in',
        ),
      ),
      body: Text(widget.value),
    );
  }
}
