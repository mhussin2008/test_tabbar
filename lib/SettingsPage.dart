
import 'package:flutter/cupertino.dart';

class SettingsPage extends StatelessWidget {
  final int index;

  const SettingsPage([this.index = 1]);

  @override
  Widget build(BuildContext context) {
    // here we go to get the current route name
    print(ModalRoute.of(context)?.settings.name);

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: (index > 1)?
        CupertinoButton.filled(

            child: Text('YES'),
            onPressed: (){Navigator.pop(context);}):
        CupertinoButton.filled(child: Text('No'), onPressed: null),
        backgroundColor: CupertinoColors.systemGrey.withOpacity(0.5),
        middle: Text(index > 1 ? 'Settings page - $index' : 'Settings page'),
      ),
      child: Expanded(

        child: Column(
          mainAxisAlignment : MainAxisAlignment.spaceEvenly,
          children: [
            CupertinoButton.filled(
              child:  Text('Go 1'),
              onPressed: () {
                Navigator.pushNamed(context, 'firstpage');
              }
            ),
            SizedBox(height: 20,),

            CupertinoButton.filled(
              child:  Text('Go 2'),
              onPressed: () {

                  Navigator.pushNamed(context, 'secondpage');



              },
            ),
          ],
        ),
      ),
    );
  }
}