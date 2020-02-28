import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class GrantOfProbate2 extends StatelessWidget {
  final TextStyle textstyle =
      TextStyle(color: Colors.white, fontWeight: FontWeight.bold);
  final InputDecoration decoration = InputDecoration(
    border: OutlineInputBorder(),
  );



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Extracting the Grant of Probate'),
          leading: new IconButton(
              icon: new Icon(Icons.arrow_back, color: new Color(0xFFFFC25E),),
              onPressed: () {
                  Navigator.pop(context);
              }),
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'chatty');
                  },
                  child: Icon(
                    Icons.chat,
                    size: 26.0,
                      color: new Color(0xFFFFC25E),
                  ),
                ))
          ]),
      body: Center(
          child: SingleChildScrollView(
              child: Column(
                  children: <Widget>[
//                      Image.asset('assets/images/flow1.png', fit: BoxFit.cover, height: 500,width: double.infinity, alignment: Alignment.center),

                      Image.asset('assets/images/flow2.png', fit: BoxFit.cover, width: double.infinity, alignment: Alignment.center),
 //                     Image.asset('assets/images/gob3.jpg', fit: BoxFit.cover, width: double.infinity, alignment: Alignment.center),
                  ]
              )
          )
      ),
        floatingActionButton: Padding(
            padding: const EdgeInsets.only(bottom: 470.0),
            child: Opacity(
                child: FloatingActionButton(
                    onPressed: (){
                        _launchURL();
                    },
                ),
                opacity: 0, // set it to false
            )
        )
    );
  }

  _launchURL() async {
      const url = 'https://www.elitigation.sg/_layouts/IELS/HomePage/Pages/SBForms.aspx';
      if (await canLaunch(url)) {
          await launch(url);
      } else {
          throw 'Could not launch $url';
      }
  }
}
