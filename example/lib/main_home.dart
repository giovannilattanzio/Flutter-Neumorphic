import 'package:example/widgets/widgets_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'playground/neumorphic_playground.dart';
import 'samples/sample_home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Neumorphic',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FullSampleHomePage(),
    );
  }
}

class FullSampleHomePage extends StatelessWidget {
  Widget _buildButton({String text, VoidCallback onClick}) {
    return NeumorphicButton(
      margin: EdgeInsets.only(bottom: 12),
      boxShape: NeumorphicBoxShape.roundRect(
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.symmetric(
        vertical: 18,
        horizontal: 24,
      ),
      style: NeumorphicStyle(
        shape: NeumorphicShape.flat,
      ),
      child: Center(child: Text(text)),
      onClick: onClick,
    );
  }

  @override
  Widget build(BuildContext context) {
    return NeumorphicTheme(
      theme: NeumorphicThemeData(depth: 8),
      child: Scaffold(
        backgroundColor: NeumorphicColors.background,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  _buildButton(
                    text: "Neumorphic Playground",
                    onClick: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                        return NeumorphicPlayground();
                      }));
                    },
                  ),
                  SizedBox(height: 24),
                  _buildButton(
                      text: "Samples",
                      onClick: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                          return SamplesHome();
                        }));
                      }),
                  SizedBox(height: 24),
                  _buildButton(
                      text: "Widgets",
                      onClick: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                          return WidgetsHome();
                        }));
                      }),
                  SizedBox(height: 12),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
