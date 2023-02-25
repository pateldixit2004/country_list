import 'package:flutter/material.dart';

class screen2 extends StatefulWidget {
  String? country;
  String? flag;

  String? president ;
  String? info;

  screen2(this.flag,this.country,this.info,this.president);

  @override
  State<screen2> createState() => _screen2State();
}

class _screen2State extends State<screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text("${widget.flag} ${widget.country}"),
      ),
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("${widget.info}"),Container(
            height: 300,
            width: 300,
            alignment: Alignment.center,
            child: Image.network("${widget.president}",height: 300,width: 300,),
          ),],
        ),
      ),
    );
  }
}
