import 'dart:io' show Platform;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/layout/android/widgets/main_android.dart';
import 'package:my_app/layout/ios/widgets/main_ios.dart';

void main() => {
      if (Platform.isIOS)
        {runApp(const MyIosApp())}
      else
        {runApp(const MyAndroidApp())}
    };
