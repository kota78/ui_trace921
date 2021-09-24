import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Widget tileView(Color backColor, textColor,  String text) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: backColor,
          ),
          child: Row(
            children: [
              Text(
                text,
                style: TextStyle(
                  color: textColor,
                ),
              ),
              Icon(
                Icons.arrow_right,
                color: textColor,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.withOpacity(0.2),
        elevation: 0,
        leading: IconButton(icon: Icon(Icons.settings, color: Colors.black,), onPressed: () {}),
        title: Text(
          "Cocoon",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(child: Container(
            color: Colors.grey.withOpacity(0.2),
          )),
          Column(
            children: [
              Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Welcome to Cocoon"),
                            ),
                            Expanded(child: Container()),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: IconButton(icon: Icon(Icons.cancel), onPressed: () {}),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  """asdfghjkl\nasdfghjkl\nasdfghjkl""",
                                ),
                              ),
                            ),
                            Expanded(child: Container(color: Colors.black,)),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 10,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "data",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Choose a template to get stated",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        tileView(Colors.blue.withOpacity(0.2), Colors.blue, "Family"),
                        tileView(Colors.blue.withOpacity(0.2), Colors.blue, "Family"),
                        tileView(Colors.blue.withOpacity(0.2), Colors.blue, "Family"),
                        tileView(Colors.blue.withOpacity(0.2), Colors.blue, "Family"),
                        tileView(Colors.blue.withOpacity(0.2), Colors.blue, "Family"),
                      ],
                    ),
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
        ],
      )
    );
  }
}
