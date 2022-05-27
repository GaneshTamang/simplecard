import 'out.dart';
import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  //text editing controller created for text input to pass data
  var a = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('data here'),
        ),
        body: ListView(
          children: [
            TextField(
              controller: a,
            ),
            ElevatedButton(
              onPressed: () {
                //route declared
                var route = MaterialPageRoute(
                    builder: (BuildContext context) => Out(
                          value: a.text,
                        ));
                //route assigned
                Navigator.of(context).push(route);
              },
              child: const Text('submit'),
            )
          ],
        ));
  }
}
