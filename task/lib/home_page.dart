import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:http/http.dart' as http;

class APiModle{
  String? id;
  String? fruit_name;
  String? fruit_image;

  APiModle({this.id,this.fruit_name,this.fruit_image});

  factory APiModle.fromjason(Map<String,dynamic> e){
    return APiModle(
      id: e["id"],
      fruit_image: e["fruit_image"],
      fruit_name: e["fruit_name"]
    );
  }
}



class homepage extends StatefulWidget {

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {

  List? item;
  FlutterTts flutterTts = FlutterTts();

  void Textospeech(para)async{
    await flutterTts.setLanguage("en-US");

    await flutterTts.setSpeechRate(0.5);

    await flutterTts.setVolume(0.5);

    await flutterTts.setPitch(1.0);

    await flutterTts.speak(para);
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Apigetdata();
  }

  void Apigetdata() async {
    var url = Uri.parse("https://nitesh6226.000webhostapp.com/Api/fruitview.php");
    var response = await http.get(url);
    var json = jsonDecode(response.body);
    setState(() {
      item = List.from(json).map((e) => APiModle.fromjason(e)).toList();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(title: Text("spickingfruits"),
      ),
      body: item == null ? Center(child: CircularProgressIndicator(),) : GridView.builder(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 200),itemCount: item!.length, itemBuilder: (context,i){
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: InkWell(
            onTap: (){
              Textospeech(item![i].fruit_name);
            },
            child: Card(child: Column(
              children: [
                Expanded(child: Image.network(item![i].fruit_image)),
                SizedBox(height: 10,),
                Text(item![i].fruit_name),
                SizedBox(height: 10,)
              ],
            ),),
          ),
        );
      })
    );
  }
}
