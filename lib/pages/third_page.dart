import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  final String userName;
  final int points;

  const ThirdPage({
    @required this.userName,
    @required this.points,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              userName,
              style: Theme.of(context).textTheme.display2,
            ),
            Text(
              points.toString(),
              style: Theme.of(context).textTheme.display1,
            )
          ],
        ),
      ),
    );
  }
}
