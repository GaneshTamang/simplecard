import 'package:flutter/material.dart';

class DataPage extends StatelessWidget {
  final String? brand;
  final String? model;
  final String? vehicleNo;
  const DataPage(
    this.brand,
    this.model,
    this.vehicleNo, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text("Brand : "),
                Text(brand!),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text("Model : "),
                Text(model!),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text("Vehicle No : "),
                Text(vehicleNo!),
              ],
            )
          ],
        ),
      ),
    );
  }
}
