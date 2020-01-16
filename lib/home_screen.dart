import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var number1 = 0, number2 = 0, sum = 0;

  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");

  ///Methods

  void doAddition() {
    setState(() {
      number1 = int.parse(t1.text);
      number2 = int.parse(t2.text);
      sum = number1 + number2;
    });
  }

  void doSubtraction() {
    setState(() {
      number1 = int.parse(t1.text);
      number2 = int.parse(t2.text);
      sum = number1 - number2;
    });
  }

  void doMultiplication() {
    setState(() {
      number1 = int.parse(t1.text);
      number2 = int.parse(t2.text);
      sum = number1 * number2;
    });
  }

  void doDiviosion() {
    setState(() {
      number1 = int.parse(t1.text);
      number2 = int.parse(t2.text);
      sum = number1 ~/ number2;
    });
  }

  void doClear(){
    setState(() {
      t1.text = "0";
      t2.text = "0";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Calculator",
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Output : $sum ",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Enter number 1"),
              controller: t1,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Enter number 2"),
               controller: t2,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  child: Text("+"),
                  color: Colors.greenAccent,
                  onPressed: doAddition,
                ),
                MaterialButton(
                  child: Text("-"),
                  color: Colors.greenAccent,
                  onPressed:doSubtraction,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  child: Text("*"),
                  color: Colors.greenAccent,
                  onPressed: doMultiplication,
                ),
                MaterialButton(
                  child: Text("/"),
                  color: Colors.greenAccent,
                  onPressed: doDiviosion,
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MaterialButton(
                  child: Text("Clear"),
                  color: Colors.greenAccent,
                  onPressed: doClear,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
