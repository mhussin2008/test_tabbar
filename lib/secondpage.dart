import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class secondpage extends StatelessWidget {
  const secondpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text('second page'),
        CupertinoButton(onPressed: () {Navigator.of(context).pop();},
            color: Colors.cyan  ,
            child: Text('go Back'))
      ],
    );
  }
}
