import 'package:flutter/material.dart';
import 'secondpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String name = "Noorman Putra Ksatria";
    TextEditingController textfortosend = TextEditingController();
    return MaterialApp(
      initialRoute: '/secondpage',
      routes: {
        '/secondpage': (context)=> SecondPage(textfromController: name, textfromTextFlied: textfortosend.text),
      },
      home: Scaffold(
        appBar: AppBar(title: Text("Navigation Route"),),
        body: Builder(builder: (context)=> Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: textfortosend,
              textAlign: TextAlign.center,
              decoration: InputDecoration(border: InputBorder.none, hintText: "isi Disini"),
            ),
            MaterialButton(onPressed: (){
              Navigator.pushNamed(context, '/secondpage');
            },
            color: Colors.blue,
            child: Text("pergi ke halaman 2", style: TextStyle(color: Colors.white),),)
          ],) ,)),
      ),
    );
  }
}