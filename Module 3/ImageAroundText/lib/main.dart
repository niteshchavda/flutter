import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: ImageAroundText(),
    );
  }
}

class ImageAroundText extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image"),
        backgroundColor: Colors.indigoAccent,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                "https://w0.peakpx.com/wallpaper/222/435/HD-wallpaper-earth-view-earth-and-moon-earth-in-space-space-thumbnail.jpg",
                height: 100,
                width: 100,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Image.network(
                    "https://s.abcnews.com/images/Technology/jupiter-webb-telescope-01-ht-iwb-220822_1661177358675_hpMain_4x3_992.jpg",
                    height: 100,
                    width: 100,
                  ),
                  SizedBox(width: 70,),
                  Text("Images"),
                  SizedBox(width: 70,),
                  Image.network("https://starwalk.space/gallery/images/saturn-planet-guide/1920x1080.jpg",height: 100, width: 100,)
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Image.network(
                    "https://akm-img-a-in.tosshub.com/indiatoday/images/bodyeditor/202111/Milky_way_4-x675.jpg?wn0aeBChvwyfO1.aDdVKKyaGJ6F5xGrC",
                    height: 100,
                    width: 100,
                  ),
            ],
          ),
        ),
      ),
    );
  }
}