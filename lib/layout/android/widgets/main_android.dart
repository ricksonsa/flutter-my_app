import 'package:flutter/material.dart';

import '../../shared/data/home_data.dart';

class MyAndroidApp extends StatelessWidget {
  const MyAndroidApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(HomeData.appBarText),
          centerTitle: true,
        ),
        body: Center(child: Image(image: NetworkImage(HomeData.homeImage))),
        floatingActionButton:
            const FloatingActionButton(onPressed: null, child: Icon(Icons.add)),
      ),
    );
  }
}
