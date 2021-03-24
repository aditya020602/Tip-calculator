import 'package:flutter/material.dart';

class Pg2 extends StatelessWidget {
  double amount;
  final ac = TextEditingController();
  Pg2(this.amount);
  double get total {
    double amt = amount;
    double p = double.parse(ac.text);
    return (amt + (p / 100) * amt);
  }

  void dialogbox(context) {
    double p = double.parse(ac.text) * amount / 100;
    final a = ac.text;
    if (a.isEmpty) return;
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text(
                'You have to pay :',
                style: TextStyle(fontSize: 40),
              ),
              content: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Amount:$amount',
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      'tip:$p',
                      style: TextStyle(fontSize: 30),
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                      ),
                      child: Text(
                        'Total:${total.toString()}',
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                    )
                  ]),
              actions: [
                RaisedButton(
                  child: Text('back'),
                  onPressed: () => Navigator.pop(context),
                )
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page2'),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Text(
            'Entered amount:${amount.toString()}',
            style: TextStyle(fontSize: 25),
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration:
                InputDecoration(labelText: 'Percent tip you want to give'),
            controller: ac,
          ),
          RaisedButton(
            child: Text('Submit'),
            onPressed: () => dialogbox(context),
          )
        ],
      ),
    );
  }
}
