import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../shared/data/home_data.dart';

class MyIosApp extends StatelessWidget {
  const MyIosApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // This app is designed only to work vertically, so we limit
    // orientations to portrait up and down.
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return CupertinoApp(
      theme: const CupertinoThemeData(brightness: Brightness.light),
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text(HomeData.appBarText),
        ),
        child: SizedBox(
          child: Scaffold(
              body:
                  Center(child: Image(image: NetworkImage(HomeData.homeImage))),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.endFloat,
              floatingActionButton: const FloatingActionButton(
                onPressed: null,
                child: Icon(
                  Icons.add,
                ),
              )),
        ),
      ),
    );
  }
}
