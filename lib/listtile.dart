import 'package:flutter/material.dart';

class Lviw extends StatelessWidget {
  const Lviw({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListViewExample'),
        centerTitle: true,
      ),
      body: ListView.builder(
        //five items for list
        itemCount: 5,
        //building item with calling context that is returned container and reated in a loop  index count
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            height: 320,
            child: Card(
              child: ListTile(
                title: const Text(
                  'Ganesh Tamang',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                subtitle: Column(
                  children: [
                    const SizedBox(height: 15),
                    const CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/images/front.png'),
                    ),
                    const SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                      child:
                          //first row
                          Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Ramhiti',
                          ),
                          SizedBox(
                            width: 100,
                          ),
                          Expanded(child: Text('Software Deveoper')),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    //row 2
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            '9808241778',
                          ),
                          SizedBox(
                            width: 70,
                          ),
                          Expanded(child: Text('Lucid Tech private Ltd')),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    //row 3
                    Padding(
                      padding: const EdgeInsets.all(2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('Slary:40,000'),
                          Text(
                            'Exp:2yrs',
                          ),
                          SizedBox(width: 18)
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'tamangganesh@hotmail.com',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
