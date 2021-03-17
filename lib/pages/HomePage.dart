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
    return GestureDetector(
      onTap: () {
        setState(() {
          bgColor = ([...Colors.primaries]..shuffle()).first;
        });
      },
      child: Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          title: Text(widget.title),
          centerTitle: true,
        ),
        body: _buildChild('Hey there'),
      ),
    );
  }

  Widget _buildChild(String text) {
    return Center(
      child: Text(
        text,
        style: TextStyle(
          fontSize: 40,
        ),
      ),
    );
  }
}
