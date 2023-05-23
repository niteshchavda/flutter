import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double sizef = 10.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Change Font Size"),
        backgroundColor: Colors.lime,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hello",style: TextStyle(fontSize:sizef),),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){
                  setState(() {
                    sizef += 1;
                  });
                }, child: Text("+")),
                SizedBox(
                  width: 30,
                ),
                ElevatedButton(onPressed: (){
                  setState(() {
                    sizef -= 1;
                  });
                }, child: Text("-")),
              ],
            )
          ],
        ),
      ),
    );
  }
}