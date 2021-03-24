import 'package:flutter/material.dart';
import './pg2.dart';

class Pg1 extends StatelessWidget {
  @override
  void checker(context) {
    final amt = (acontroller.text);
    if (amt.isEmpty) return;
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Pg2(double.parse(acontroller.text))));
  }

  final acontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tip Calculator'),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: 'Amount',
            ),
            controller: acontroller,
          ),
          RaisedButton(
            child: Text('Done'),
            onPressed: () => checker(context),
          )
        ],
      ),
    );
  }
}
