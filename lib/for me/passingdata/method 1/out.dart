import 'package:flutter/material.dart';

class Out extends StatefulWidget {
  final String value;

  const Out({Key? key, required this.value}) : super(key: key);
  //contructor created with key so retuired this.value

  @override
  State<Out> createState() => _OutState();
}

class _OutState extends State<Out> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('here data recieved and displayed'),
      ),
      body: Text(widget.value),
    );
  }
}
