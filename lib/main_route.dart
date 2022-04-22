import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DefaultRoute extends StatelessWidget {
  const DefaultRoute({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text('Home page'),
        CupertinoButton(onPressed: () {},
            color: Colors.cyan  ,
            child: Text('Hello Page'))
      ],
    );
  }
}