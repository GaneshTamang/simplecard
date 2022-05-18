import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //created app bar

      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'profile card',
          style: TextStyle(
              color: Color.fromARGB(255, 10, 78, 223),
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        alignment: Alignment.topCenter,
        height: 450,
        width: 400,
        //arrange box container symetrically
        margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              const CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('assets/images/front.png'),
              ),
              const SizedBox(
                height: 60,
              ),
              //for name
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(padding: EdgeInsets.all(2)),
                  Text(
                    'Name:',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Padding(padding: EdgeInsets.all(2)),
                  Text('Ganesh Tamang',
                      textAlign: TextAlign.start,
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                  Padding(padding: EdgeInsets.all(2)),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              //for address
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                      padding: EdgeInsets.all(
                    2,
                  )),
                  Text('Address:'),
                  Padding(padding: EdgeInsets.all(1)),
                  Text(
                    'Kapan faika',
                  ),
                  Padding(padding: EdgeInsets.all(16)),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              //for contact
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(padding: EdgeInsets.all(3)),
                  Text('Contact:'),
                  Padding(padding: EdgeInsets.all(4)),
                  Text('9808241778'),
                  Padding(padding: EdgeInsets.all(12)),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('tamangganesh@hotmail.com',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
