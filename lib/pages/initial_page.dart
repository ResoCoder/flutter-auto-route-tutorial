import 'package:auto_route_tutorial/routes/router.gr.dart';
import 'package:flutter/material.dart';

class InitialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text('Go to SECOND'),
              onPressed: () => navigateToSecond(context),
            ),
            SizedBox(height: 10),
            RaisedButton(
              child: Text('Go to THIRD'),
              onPressed: () => navigateToThird(context),
            ),
          ],
        ),
      ),
    );
  }

  void navigateToSecond(BuildContext context) {
    Router.navigator.pushNamed(Router.secondPage, arguments: 'unique_user_id');
  }

  void navigateToThird(BuildContext context) {
    Router.navigator.pushNamed(
      Router.thirdPage,
      arguments: ThirdPageArguments(
        points: 123,
        userName: 'Bob',
      ),
    );
  }
}
