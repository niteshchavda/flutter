import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'SecondScreen.dart';

class FirstPage extends StatefulWidget {

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int? a;
  int? b;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigoAccent,
          title: const Text("PrintNumber"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Enter number",
                    hintText: "Number1",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                  ),
                  keyboardType: const TextInputType.numberWithOptions(decimal: true,signed: true),
                  onChanged: (newValue) {
                    setState(() {
                      a = int.parse(newValue);
                    });
                  },
                ),
                const SizedBox(height: 20,),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Enter number",
                    hintText: "Number2",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                  ),
                  keyboardType: const TextInputType.numberWithOptions(decimal: true,signed: true),
                  onChanged: (newValue) {
                    setState(() {
                      b = int.parse(newValue);
                    });
                  },
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>PrintNumberBetween2(a!,b!)));
          },
          child: const Icon(CupertinoIcons.arrow_right),
        ),
    );
  }
}
