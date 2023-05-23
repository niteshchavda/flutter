import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RadioButtonWidget(),
    );
  }
}

enum MathOP { add, sub, mul, div }

class RadioButtonWidget extends StatefulWidget {
  const RadioButtonWidget({super.key});

  @override
  State<RadioButtonWidget> createState() => _RadioButtonWidgetState();
}

class _RadioButtonWidgetState extends State<RadioButtonWidget> {
  int a = 0;
  int b = 0;
  var groupvalue;
  String Result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Math Operations"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Enter number 1",
              ),
              onChanged: (value) {
                setState(() {
                  a = int.parse(value);
                });
              },
              keyboardType: TextInputType.numberWithOptions(decimal: true,signed: true),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Enter number 2",
              ),
              onChanged: (value) {
                setState(() {
                  b = int.parse(value);
                });
              },
              keyboardType: TextInputType.numberWithOptions(decimal: true,signed: true)
            ),
            SizedBox(
              height: 40,
            ),
            RadioListTile(
                title: Text("Addition"),
                value: MathOP.add,
                groupValue: groupvalue,
                onChanged: (value) {
                  setState(() {
                    groupvalue = value;
                    Result = Calculation(groupvalue);
                  });
                }),
            RadioListTile(
                title: Text("Subtraction"),
                value: MathOP.sub,
                groupValue: groupvalue,
                onChanged: (value) {
                  setState(() {
                    groupvalue = value;
                    Result = Calculation(groupvalue);
                  });
                }),
            RadioListTile(
                title: Text("Multiplication"),
                value: MathOP.mul,
                groupValue: groupvalue,
                onChanged: (value) {
                  setState(() {
                    groupvalue = value;
                    Result = Calculation(groupvalue);
                  });
                }),
            RadioListTile(
                title: Text("Division"),
                value: MathOP.div,
                groupValue: groupvalue,
                onChanged: (value) {
                  setState(() {
                    groupvalue = value;
                    Result = Calculation(groupvalue);
                  });
                }),
            SizedBox(
              height: 10,
            ),
            Text(Result)
          ],
        ),
      ),
    );
  }

  String Calculation(MathOP value) {
    switch (value) {
      case MathOP.add:
        return "Addition ${a + b}";
      case MathOP.sub:
        return "Subtraction ${a - b}";
      case MathOP.mul:
        return "Multiplication ${a * b}";
      case MathOP.div:
        return "division ${a / b}";
    }
  }
}
