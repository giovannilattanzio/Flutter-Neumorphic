import 'package:example/lib/Code.dart';
import 'package:example/lib/color_selector.dart';
import 'package:example/lib/top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class ButtonWidgetPage extends StatefulWidget {
  ButtonWidgetPage({Key key}) : super(key: key);

  @override
  createState() => _WidgetPageState();
}

class _WidgetPageState extends State<ButtonWidgetPage> {
  @override
  Widget build(BuildContext context) {
    return NeumorphicTheme(
      usedTheme: UsedTheme.LIGHT,
      theme: NeumorphicThemeData(
        lightSource: LightSource.topLeft,
        accentColor: NeumorphicColors.accent,
        depth: 4,
        intensity: 0.5,
      ),
      child: _Page(),
    );
  }
}

Color _textColor(BuildContext context){
  if(NeumorphicTheme.isUsingDark(context))
    return Colors.white70;
  else {
    return Colors.black;
  }
}

class _Page extends StatefulWidget {
  @override
  createState() => _PageState();
}

class _PageState extends State<_Page> {


  @override
  Widget build(BuildContext context) {
    return NeumorphicBackground(
      padding: EdgeInsets.all(8),
      child: Scaffold(
        appBar: TopBar(
          title: "Button",
        ),
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              _DefaultWidget(),
              _CircleWidget(),
              _ColorizableWidget(),
              _MinDistanceWidget(),
              _EnabledDisabledWidget(),
              _FlatConcaveConvexWidget(),
              _DurationWidget(),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

class _DefaultWidget extends StatefulWidget {
  @override
  createState() => _DefaultWidgetState();
}

class _DefaultWidgetState extends State<_DefaultWidget> {

  Widget _buildCode(BuildContext context){
    return Code("""
NeumorphicButton(
     onClick: () {
        
     },
     child: Text("Click me"),
),
""");
  }

  Widget _buildWidget(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12),
      child: Row(
        children: <Widget>[
          Text(
            "Default",
            style: TextStyle(color: _textColor(context)),
          ),
          SizedBox(width: 12),
          NeumorphicButton(
            onClick: () {
              setState(() {

              });
            },
            child: Text("Click me"),
          ),
          SizedBox(width: 12),
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        _buildWidget(context),
        _buildCode(context),
      ],
    );
  }
}

class _CircleWidget extends StatefulWidget {
  @override
  createState() => _CircleWidgetState();
}

class _CircleWidgetState extends State<_CircleWidget> {

  Widget _buildCode(BuildContext context){
    return Code("""
NeumorphicButton(
     boxShape: NeumorphicBoxShape.circle(),
     onClick: () {
       
     },
     padding: EdgeInsets.all(18.0),
     child: Icon(Icons.play_arrow),
),
""");
  }

  Widget _buildWidget(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12),
      child: Row(
        children: <Widget>[
          Text(
            "Circle",
            style: TextStyle(color: _textColor(context)),
          ),
          SizedBox(width: 12),
          NeumorphicButton(
            boxShape: NeumorphicBoxShape.circle(),
            onClick: () {
              setState(() {

              });
            },
            padding: EdgeInsets.all(18.0),
            child: Icon(Icons.play_arrow),
          ),
          SizedBox(width: 12),
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        _buildWidget(context),
        _buildCode(context),
      ],
    );
  }
}

class _MinDistanceWidget extends StatefulWidget {
  @override
  createState() => _MinDistanceWidgetState();
}

class _MinDistanceWidgetState extends State<_MinDistanceWidget> {

  Widget _buildCode(BuildContext context){
    return Code("""
NeumorphicButton(
     boxShape: NeumorphicBoxShape.circle(),
     minDistance: -5.0,
     onClick: () {
       
     },
     padding: EdgeInsets.all(18.0),
     child: Icon(Icons.play_arrow),
),
""");
  }

  Widget _buildWidget(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12),
      child: Row(
        children: <Widget>[
          Text(
            "MinDistance -5",
            style: TextStyle(color: _textColor(context)),
          ),
          SizedBox(width: 12),
          NeumorphicButton(
            minDistance: -5.0,
            boxShape: NeumorphicBoxShape.circle(),
            onClick: () {
              setState(() {

              });
            },
            padding: EdgeInsets.all(18.0),
            child: Icon(Icons.play_arrow),
          ),
          SizedBox(width: 12),
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        _buildWidget(context),
        _buildCode(context),
      ],
    );
  }
}

class _ColorizableWidget extends StatefulWidget {
  @override
  createState() => _ColorizableWidgetState();
}

class _ColorizableWidgetState extends State<_ColorizableWidget> {

  Color currentColor = Colors.green;

  Widget _buildCode(BuildContext context){
    return Code("""
NeumorphicButton(
    onClick: (){

    },
    style: NeumorphicStyle(
        color: Colors.green
    ),
    child: Text("Click me"),
),
""");
  }

  Widget _buildWidget(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12),
      child: Row(
        children: <Widget>[
          Text(
            "Color",
            style: TextStyle(color: _textColor(context)),
          ),
          SizedBox(width: 12),
          ColorSelector(
            color: currentColor,
            onColorChanged: (color){
              setState(() {
                currentColor = color;
              });
            },
          ),
          SizedBox(width: 12),
          NeumorphicButton(
            onClick: (){

            },
            style: NeumorphicStyle(
                color: currentColor
            ),
            child: Text("Click me"),
          ),
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        _buildWidget(context),
        _buildCode(context),
      ],
    );
  }

}


class _EnabledDisabledWidget extends StatefulWidget {
  @override
  createState() => _EnabledDisabledWidgetState();
}

class _EnabledDisabledWidgetState extends State<_EnabledDisabledWidget> {

  Widget _buildWidget(BuildContext context){
    return Padding(
      padding: EdgeInsets.all(12),
      child: Row(
        children: <Widget>[
          Text(
            "Enabled :",
            style: TextStyle(color: _textColor(context)),
          ),
          SizedBox(width: 12),
          NeumorphicButton(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 18),
            child: Text("First"),
            onClick: () {
              setState(() {

              });
            },
          ),
          SizedBox(width: 24),
          Text(
            "Disabled :",
            style: TextStyle(color: _textColor(context)),
          ),
          SizedBox(width: 12),
          NeumorphicButton(
            isEnabled: false,
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 18),
            child: Text("Second"),
            onClick: () {
              setState(() {

              });
            },
          ),
        ],
      ),
    );
  }

  Widget _buildCode(BuildContext context){
    return Code("""    
NeumorphicButton(
     isEnabled: false,
     child: Text("Second"),
     onClick: () {
       
     },
),
""");
  }

  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        _buildWidget(context),
        _buildCode(context),
      ],
    );
  }
}


class _DurationWidget extends StatefulWidget {
  @override
  createState() => _DurationWidgetState();
}

class _DurationWidgetState extends State<_DurationWidget> {

  Widget _buildCode(BuildContext context){
    return Code("""
NeumorphicButton(
    onClick: (){

    },
    child: Text("Press me all night long"),
    duration: Duration(seconds: 1),
),
""");
  }

  Widget _buildWidget(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12),
      child: Column(
        children: <Widget>[
          SizedBox(height: 12),
          Row(
            children: <Widget>[
              Text(
                "Duration",
                style: TextStyle(color: _textColor(context)),
              ),
              SizedBox(width: 12),
              NeumorphicButton(
                onClick: (){

                },
                child: Text("Press me all night long"),
                duration: Duration(seconds: 1),
              ),
              SizedBox(width: 12),
            ],
          ),
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        _buildWidget(context),
        _buildCode(context),
      ],
    );
  }
}

class _FlatConcaveConvexWidget extends StatefulWidget {
  @override
  createState() => _FlatConcaveConvexWidgetState();
}

class _FlatConcaveConvexWidgetState extends State<_FlatConcaveConvexWidget> {

  bool isChecked = false;

  Widget _buildCode(BuildContext context){
    return Code("""
NeumorphicButton(
    style: NeumorphicStyle(
         shape: NeumorphicShape.flat 
         //or convex, concave
    ),
    onClick: () {
        
    },
    child: ...
),
""");
  }

  Widget _buildWidget(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12),
      child: Column(
        children: <Widget>[
          SizedBox(height: 12),
          Row(
            children: <Widget>[
              Container(
                width: 100,
                child: Text(
                  "Flat",
                  style: TextStyle(color: _textColor(context)),
                ),
              ),
              SizedBox(width: 12),
              NeumorphicButton(
                boxShape: NeumorphicBoxShape.circle(),
                style: NeumorphicStyle(shape: NeumorphicShape.flat),
                onClick: () {
                  setState(() {

                  });
                },
                padding: EdgeInsets.all(18.0),
                child: Icon(Icons.play_arrow),
              ),
            ],
          ),
          SizedBox(height: 12),
          Row(
            children: <Widget>[
              Container(
                width: 100,
                child: Text(
                  "Concave",
                  style: TextStyle(color: _textColor(context)),
                ),
              ),
              SizedBox(width: 12),
              NeumorphicButton(
                boxShape: NeumorphicBoxShape.circle(),
                style: NeumorphicStyle(shape: NeumorphicShape.concave),
                onClick: () {
                  setState(() {

                  });
                },
                padding: EdgeInsets.all(18.0),
                child: Icon(Icons.play_arrow),
              ),
            ],
          ),
          SizedBox(height: 12),
          Row(
            children: <Widget>[
              Container(
                width: 100,
                child: Text(
                  "Convex",
                  style: TextStyle(color: _textColor(context)),
                ),
              ),
              SizedBox(width: 12),
              NeumorphicButton(
                boxShape: NeumorphicBoxShape.circle(),
                style: NeumorphicStyle(shape: NeumorphicShape.convex),
                onClick: () {
                  setState(() {

                  });
                },
                padding: EdgeInsets.all(18.0),
                child: Icon(Icons.play_arrow),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        _buildWidget(context),
        _buildCode(context),
      ],
    );
  }
}
