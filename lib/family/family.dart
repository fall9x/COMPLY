import 'package:flutter/material.dart';

class FamilyPage extends StatelessWidget {
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
                appBar: AppBar(
                    title: Text('FAMILY MATTERS'),
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
                            )
                        )
                    ],
                    textTheme: TextTheme(
                title: TextStyle(
                    color:  new Color(0xFFFFC25E),
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        ),
                    ),
                ),

                body: Center(
                    child: SingleChildScrollView(
                        padding: const EdgeInsets.all(8.0),
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
                                        child: Text(
                                            'Adoption',
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
                                            'Grant of Probate',
                                            style: textstyle,
                                        ),
                                        onPressed: () {
                                            Navigator.pushNamed(context, 'grant1');
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
                                            'Letters of Administration',
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
                                            'Mental Capacity Proceedings',
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
                                            'Divorce Proceedings',
                                            style: textstyle,
                                        ),
                                        onPressed: () {},
                                    ),
                                ],
                            ),
                        ),
                    ),
                ),
            )
        );
    }
}