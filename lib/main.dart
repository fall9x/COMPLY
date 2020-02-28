import 'package:comply/dialogflow.dart';
import 'package:comply/family/family.dart';
import 'package:comply/family/grant.dart';
import 'package:comply/family/grantofprobate.dart';
import 'package:comply/family/grantofprobate2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:comply/dialogflow2.dart';

void main() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    runApp(new MyApp());
}

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return new MaterialApp(
            initialRoute: 'home',
            routes: {
                'home': (context) => MyHomePage(),
                'chat': (context) => new HomePageDialogflow(),
                'family': (context) => FamilyPage(),
                'grant': (context) => GrantOfProbate(),
                'chatty': (context) => FlutterFactsDialogFlow(),
                'grant1': (context) => Grant1(),
                'grant2': (context) => GrantOfProbate2(),
            },
            title: 'COM-PLYNION',
            theme: new ThemeData(
                brightness: Brightness.light,
                primaryColor: const Color(0xff407673),
            ),
            debugShowCheckedModeBanner: false,
        );
    }
}

/*class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: Text('COMPLY APP'),
    actions: <Widget>[
    Padding(
      padding: EdgeInsets.only(right: 20.0),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, 'chat');
        },
        child: Icon(
          Icons.chat,
          size: 26.0,
        ),
      )
    )]),
    body: Center(
      child: IntrinsicWidth(
        stepHeight: 60.0,
        stepWidth: 60.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            RaisedButton(
              onPressed: () {},
              child: Text('Criminal Matters'),
            ),
            RaisedButton(
              onPressed: () {},
              child: Text('Family Matters'),
            ),
            RaisedButton(
              onPressed: () {},
              child: Text('Civil Matters'),
            ),
          ],
        ),
      ),
    ),
  );
}
}*/

class MyHomePage extends StatefulWidget {
    MyHomePage({Key key, this.title}) : super(key: key);

    final String title;

    @override
    _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    final TextStyle textstyle =
    TextStyle(color: new Color(0xFFFFC25E), fontWeight: FontWeight.bold, fontSize: 22);
    final InputDecoration decoration = InputDecoration(
        border: OutlineInputBorder(),
    );

    @override
    Widget build(BuildContext context) {
        return Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: new AssetImage('assets/images/background-01.png'),
                    fit: BoxFit.cover,
                ),
            ),
            child: Scaffold(
                backgroundColor: Colors.transparent,
                appBar: AppBar(title: Text('COMPLY APP'), textTheme: TextTheme(
                    title: TextStyle(
                        color:  new Color(0xFFFFC25E),
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                    ),
                ),
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
                            )
                        )
                    ]),
                body: Center(
                    child: SingleChildScrollView(
                        padding: const EdgeInsets.all(4.0),
                        child: Center(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                    SizedBox(
                                        height: 30,
                                    ),
                                    MaterialButton(
                                        color: const Color(0xff407673),
                                        minWidth: 320,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: new BorderRadius.circular(10.0),
                                        ),
                                        height: 45,
//                                    shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(22.0) ),
                                        child: Text(
                                            'Criminal Matters',
                                            style: textstyle,
                                        ),
                                        onPressed: () {},
                                    ),
                                    SizedBox(
                                        height: 30,
                                    ),
                                    MaterialButton(
                                        color: const Color(0xff407673),
                                        minWidth: 320,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: new BorderRadius.circular(10.0),
                                        ),
                                        height: 45,
                                        child: Text(
                                            'Family Matters',
                                            style: textstyle,
                                        ),
                                        onPressed: () {
                                            Navigator.pushNamed(context, 'family');
                                        },
                                    ),
                                    SizedBox(
                                        height: 30,
                                    ),
                                    MaterialButton(
                                        color: const Color(0xff407673),
                                        minWidth: 320,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: new BorderRadius.circular(10.0),
                                        ),
                                        height: 45,
                                        child: Text(
                                            'Civil Matters',
                                            style: textstyle,
                                        ),
                                        onPressed: () {},
                                    )
                                    ,SizedBox(
                                        height: 30,
                                    ),
                                    MaterialButton(
                                        color: const Color(0xff407673),
                                        minWidth: 320,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: new BorderRadius.circular(10.0),
                                        ),
                                        height: 45,
                                        child: Text(
                                            'Enforcement of Orders',
                                            style: textstyle,
                                        ),
                                        onPressed: () {},
                                    )
                                    ,SizedBox(
                                        height: 30,
                                    ),
                                    MaterialButton(
                                        color: const Color(0xff407673) ,
                                        minWidth: 320,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: new BorderRadius.circular(10.0),
                                        ),
                                        height: 45,
                                        child: Text(
                                            'Others',
                                            style: textstyle,
                                        ),
                                        onPressed: () {},
                                    ),
                                ],
                            ),
                        ),
                    ),
                ),
            ),
        );
    }
}
