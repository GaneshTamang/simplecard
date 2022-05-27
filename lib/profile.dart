import 'package:card/carmodel.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //here parameter declared with refrence to media query
    final p = MediaQuery.of(context).padding.top;
    final s = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Profile',
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: s.height / 1000 * 13,
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: const AssetImage('assets/images/front.png'),
                radius: s.height / 1000 * 80,
              ),
            ),
            SizedBox(
              height: s.height / 1000 * 34,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: p * 3.2),
              child: const Text(
                'Ganesh Tamang',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: s.height / 1000 * 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: p * 2.6),
              child: const Text('tamangganesh@hotmail.com',
                  style: TextStyle(
                    fontSize: 16,
                  )),
            ),
            SizedBox(
              height: s.height / 1000 * 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: p * 4),
              child: const Text('+9779808241778',
                  style: TextStyle(
                    fontSize: 16,
                  )),
            ),
            SizedBox(
              height: s.height / 1000 * 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: p * 5.3),
              child: GestureDetector(
                onTap: () {
                  showme(context);
                },
                child: const Text('Edit Profile',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 12,
                      color: Colors.blue,
                    )),
              ),
            ),
            SizedBox(
              height: s.height / 1000 * 16,
            ),

            //addvehicle
            ListTile(
                leading: Container(
                  height: s.height / 1000 * 50,
                  width: s.width / 1000 * 2 * 60,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(249, 167, 243, 206),
                  ),
                  child: const Icon(
                    Icons.car_repair,
                    color: Color.fromARGB(255, 45, 160, 49),
                  ),
                ),
                title: const Text(
                  'Add Vehicle',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => FormPage()));
                    //here(_) is used for we dont need context
                  },
                  child: Container(
                    height: s.height / 1000 * 50,
                    width: s.width / 1000 * 2 * 50,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.all(Radius.circular(p * 0.2)),
                    ),
                    child: const Icon(Icons.arrow_forward_ios),
                  ),
                )),
            //settings
            ListTile(
                leading: Container(
                  height: s.height / 1000 * 50,
                  width: s.width / 1000 * 2 * 60,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(246, 167, 215, 243),
                  ),
                  child: const Icon(
                    Icons.settings,
                    color: Color.fromARGB(255, 62, 132, 223),
                  ),
                ),
                title: const Text(
                  'Settings',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: Container(
                  height: s.height / 1000 * 50,
                  width: s.width / 1000 * 2 * 50,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                  ),
                  child: const Icon(Icons.arrow_forward_ios),
                )),
            //need help area
            ListTile(
                leading: Container(
                  height: s.height / 1000 * 50,
                  width: s.width / 1000 * 2 * 60,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(248, 167, 234, 243),
                  ),
                  child: const Icon(
                    Icons.question_mark_rounded,
                    color: Colors.purple,
                  ),
                ),
                title: const Text(
                  'Need Help?',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: Container(
                  height: s.height / 1000 * 50,
                  width: s.width / 1000 * 2 * 50,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                  ),
                  child: const Icon(Icons.arrow_forward_ios),
                )),
            //about sawari
            ListTile(
                leading: Container(
                  height: s.height / 1000 * 50,
                  width: s.width / 1000 * 2 * 60,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(248, 224, 255, 240),
                  ),
                  child: const Icon(
                    //icon
                    Icons.person,
                    color: Color.fromARGB(255, 45, 160, 49),
                  ),
                ),
                title: const Text(
                  'Add Vehicle',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: Container(
                  height: s.height / 1000 * 50,
                  width: s.width / 1000 * 2 * 50,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                  ),
                  child: const Icon(Icons.arrow_forward_ios),
                )),
            SizedBox(
              height: s.height / 1000 * 40,
            ),
            //signout
            Padding(
              padding: EdgeInsets.only(left: p * 0.8),
              child: Container(
                height: s.height * 60 / 1000,
                width: s.width / 1000 * 2 * 200,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.all(Radius.circular(s.height / 1000 * 20)),
                  color: Colors.grey[300],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(
                      Icons.logout,
                      color: Colors.red,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: p * 0.8),
                      child: const Text('Sign Out'),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showme(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/front.png'),
                  radius: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                  decoration: const InputDecoration(hintText: 'Name'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                  decoration: const InputDecoration(hintText: 'Address'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                  decoration: const InputDecoration(hintText: 'Phone number'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                  decoration: const InputDecoration(hintText: 'Email'),
                ),
              ),
            ],
          );
        });
  }
}
