import 'package:flutter/material.dart';

class DataScreen extends StatelessWidget {
  String? name, email, phone;

  DataScreen({required this.name, required this.email, required this.phone});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name  : ${name}',
              style: TextStyle(fontSize: 25),
            ),
            Text(
              'Email   : ${email}',
              style: TextStyle(fontSize: 25),
            ),
            Text(
              'Phone : ${phone}',
              style: TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
