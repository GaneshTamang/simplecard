import 'package:flutter/material.dart';

class Ccard extends StatelessWidget {
  const Ccard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListViewExamplewith container'),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      const Text(
                        'Ganesh Tamang',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Row(
                        children: [
                          //for image
                          const Flexible(
                              //for image
                              flex: 1,
                              child: CircleAvatar(
                                  radius: 25,
                                  backgroundImage: AssetImage(
                                    'assets/images/number.png',
                                  ))),
                          //for data
                          Flexible(
                              flex: 4,
                              child: SizedBox(
                                  height: 150,
                                  width: double.infinity,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Flexible(
                                          flex: 1,
                                          child: SizedBox(
                                            height: 200,
                                            width: 150,
                                            child: Column(
                                              children: const [
                                                Padding(
                                                  padding: EdgeInsets.all(8.0),
                                                  child: Text('Ramhiti'),
                                                ),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.all(8.0),
                                                  child: Text('9808241778'),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.all(8.0),
                                                  child: Text('salary:20,000'),
                                                ),
                                              ],
                                            ),
                                          )),
                                      Flexible(
                                          flex: 1,
                                          child: SizedBox(
                                            height: 150,
                                            width: double.infinity,
                                            child: Column(
                                              children: const [
                                                Padding(
                                                  padding: EdgeInsets.all(8.0),
                                                  child: Text(
                                                      'Software Developer'),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.all(8.0),
                                                  child: Text(
                                                      'Lucid Tech Pvt.Ltd'),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 60.0),
                                                  child: Text('2years'),
                                                ),
                                              ],
                                            ),
                                          )),
                                    ],
                                  ))),
                          //for image
                          const Flexible(
                              flex: 1,
                              child: SizedBox(
                                height: 200,
                                width: 400,
                                child: Image(
                                  image: AssetImage('assets/images/front.png'),
                                ),
                              ))
                        ],
                      ),
                      const Text(
                        'tamangganesh@hotmail.com',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              );
            }));
  }
}
