
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomePage()
    );
  }
}class HomePage extends StatefulWidget {
  HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var MyItems = [
    {
      "img":
          "https://learnpainless.com/static/65fa8f8d3bab30d38439e28fe1ce895e/945a8/flutter-url-launcher-not-working-on-ios.png",
      "title": "Shakib"
    },
    {
      "img":
          "https://miro.medium.com/v2/resize:fit:2000/1*QeIoAP7RFRfIOn-lA54kcA.png",
      "title": "Abdullah"
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSt0J47Xuq3Y5VQaBULrZGvduZiGWn4irFLOw&usqp=CAU",
      "title": "Faruk"
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIGYV85h4LwEch42BtyUaQuK32xdg6UiUuzA&usqp=CAU",
      "title": "Shadik"
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiy4KH2lHXbobQl2i-XrROn4of2Ba6yl3baA&usqp=CAU",
      "title": "Robiul"
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_VlOb-rz6CRTQQ1JHxXdlsyDkhGiRG78BAg&usqp=CAU",
      "title": "AKash"
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaSRZRYtw7BIeZhwRuUqNKRRSPZR-7pwcqig&usqp=CAU",
      "title": "Mostafizur"
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3Tt4unQ6g9giL0CFy_Ve6T1olAPU6ZEbGlA&usqp=CAU",
      "title": "Abbdil"
    },
    {
      "img":
          "https://learnpainless.com/static/65fa8f8d3bab30d38439e28fe1ce895e/945a8/flutter-url-launcher-not-working-on-ios.png",
      "title": "Shakib"
    },
    {
      "img":
          "https://miro.medium.com/v2/resize:fit:2000/1*QeIoAP7RFRfIOn-lA54kcA.png",
      "title": "Abdullah"
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSt0J47Xuq3Y5VQaBULrZGvduZiGWn4irFLOw&usqp=CAU",
      "title": "Faruk"
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIGYV85h4LwEch42BtyUaQuK32xdg6UiUuzA&usqp=CAU",
      "title": "Shadik"
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiy4KH2lHXbobQl2i-XrROn4of2Ba6yl3baA&usqp=CAU",
      "title": "Robiul"
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_VlOb-rz6CRTQQ1JHxXdlsyDkhGiRG78BAg&usqp=CAU",
      "title": "AKash"
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaSRZRYtw7BIeZhwRuUqNKRRSPZR-7pwcqig&usqp=CAU",
      "title": "Mostafizur"
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3Tt4unQ6g9giL0CFy_Ve6T1olAPU6ZEbGlA&usqp=CAU",
      "title": "Abbdil"
    },
  ];
  MySnackBar(context, massege) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(massege)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("GridView"),
        centerTitle: true,
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 0,
          childAspectRatio: 2.1,
        ),
        itemCount: MyItems.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              MySnackBar(context, MyItems[index]["title"]);
            },
            child: Container(
              margin: EdgeInsets.all(5),
              width: double.infinity,
              height: 200,
              child: Image.network(
                MyItems[index]["img"]!,
                fit: BoxFit.fill,
              ),
            ),
          );
        },
      ),
    );
  }
}


