


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class firstpage extends StatelessWidget {
  const firstpage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text('first page'),
        CupertinoButton(onPressed: () {Navigator.of(context).pop();},
            color: Colors.cyan  ,
            child: Text('go Back'))
      ],
    );


  }
}
