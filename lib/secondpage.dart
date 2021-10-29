import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final String textfromController;
  final String textfromTextFlied;
  const SecondPage({ Key? key, required this.textfromController, required this.textfromTextFlied }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Page"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Text dari Controller : " + textfromController),
            Text("Text dari flied : " + textfromTextFlied),
            MaterialButton(onPressed: (){
              Navigator.pop(context);
            },
            color: Colors.blue,
            child: Text("kembali", style: TextStyle(color: Colors.white),),)
          ],
        ) ,),
    );
  }
}