import 'package:card/data.dart';
import 'package:card/ofrmodel.dart';
import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  FormPage({Key? key}) : super(key: key);
  final TextEditingController _brand = TextEditingController();
  final TextEditingController _vehicleno = TextEditingController();
  final TextEditingController _model = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Form',
            style: TextStyle(fontSize: 30, color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Please Enter Vehicle Details',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                  controller: _brand,
                  maxLength: 10,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      hintText: 'Vehicle Brand',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5))),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                  controller: _vehicleno,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      hintText: 'Vehicle Number',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5))),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                  controller: _model,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      hintText: 'Vehicle Model',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5))),
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => DataPage(
                        _brand.text,
                        _vehicleno.text,
                        _model.text,
                      ),
                    ),
                  );
                },
                child: const Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
