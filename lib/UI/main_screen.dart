import 'package:flutter/material.dart';

import 'data_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  TextEditingController _name = new TextEditingController();
  TextEditingController _email = new TextEditingController();
  TextEditingController _phone = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Form Data'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Stack(children: [
          Image.asset('asset/sample.png'),
          Center(
            child: Column(
              children: [
                TextField(
                  controller: _name,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    labelText: 'Enter Name',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: _email,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    labelText: 'Enter email',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: _phone,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    labelText: 'Enter phone',
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => DataScreen(
                            name: _name.text,
                            email: _email.text,
                            phone: _phone.text,
                          ),
                        ),
                      );
                    },
                    child: Text(
                      'Add Data',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    )),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(
                  color: Colors.blue,
                  child: Text('Clear Form',
                      style: TextStyle(
                        fontSize: 16,
                      )),
                  onPressed: () {
                    setState(() {
                      _name.clear();
                      _email.clear();
                      _phone.clear();
                    });
                  },
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
