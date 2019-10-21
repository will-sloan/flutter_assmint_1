import 'package:flutter/material.dart';

import './text_output.dart';

class TextControl extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TextControl();
  }
}
class _TextControl extends State<TextControl> {
  var displayText = "assmint";
  static const double HEIGHT = 72.0;
  static const double WIDTH = 72.0;
  @override
  Widget build(BuildContext context) {
    return Column (
          children: <Widget>[
            Container( 
              child:FlatButton(
                    child: Text("New Text"), 
                    onPressed: () => setState(() {
                      displayText *= 2;
                    }),
                    ),
              padding: const EdgeInsets.all(1.0),
              color: Colors.amber,
              //transform: Matrix4.rotationZ(0.2),
              width: WIDTH,
              height:HEIGHT, 
            ),
            Container( 
              child:FlatButton(
                    child: Text("Reset Text"), 
                    onPressed: () => setState(() {
                      displayText = "assmint"; 
                      }),
                    ),
              padding: const EdgeInsets.all(1.0),
              color: Colors.amber,
              //transform: Matrix4.rotationZ(0.2),
              width: WIDTH,
              height: HEIGHT,
              margin: EdgeInsets.all(56),
            ),
            TextOutput(displayText)
          ]
        );
  }
}