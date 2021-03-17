import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color bgColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () => _changeColor(),
        child: _buildContent('Hey there'),
      ),
    );
  }

  void _changeColor() {
    setState(() {
      bgColor = _randomColor().withOpacity(1.0);
    });
  }

  Color _randomColor() {
    return Color(Random().nextInt(0xFFFFFF));
  }

  Widget _buildContent(String text) {
    return Center(
      child: Text(
        text,
        style: TextStyle(
          fontSize: 40,
          color: bgColor == Colors.white ? Colors.black : Colors.white,
          shadows: [
            Shadow(
              offset: Offset(1, 1),
              blurRadius: 1,
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
