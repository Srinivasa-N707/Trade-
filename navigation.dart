import 'package:flutter/material.dart';
import 'package:cryptobase/my_global_variables.dart';
import 'main.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xa1b10dce),
            ),
            child: Text(
              'Filter',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          CheckboxListTile(
            title: Text('Daily Hammer'),
            value: MyGlobalVariables.isChecked1,
            onChanged: (value) {
              setState(() {
                MyGlobalVariables.isChecked1 = value;
                Home();
              });
            },
          ),
          CheckboxListTile(
            title: Text('Volume'),
            value: MyGlobalVariables.isChecked2,
            onChanged: (value) {
              setState(() {
                MyGlobalVariables.isChecked2 = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
