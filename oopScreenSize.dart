import 'package:flutter/material.dart';

class ScreenSize {
  Size _designScreenSize = Size(375, 812);
  late Size _deviceScreenSize;

  static final ScreenSize _instance = ScreenSize._internal();

  factory ScreenSize() {
    return _instance;
  }

  ScreenSize._internal();

  // ScreenSize({required Size deviceScreenSize})
  //     : _deviceScreenSize = deviceScreenSize;

  Size get designScreenSize => _designScreenSize;

  Size get deviceScreenSize => _deviceScreenSize;

  void init(Size deviceScreenSize) {
    this._deviceScreenSize = deviceScreenSize;
  }

  double scaleWidth(num designNumber) {
    if (_deviceScreenSize.width == 0) {
      return designNumber.toDouble();
    }

    return (designNumber / _designScreenSize.width) * _deviceScreenSize.width;
  }
}

void main() {
  final deviceScreenSize = Size(430, 932);
  final screenSize = ScreenSize();

  screenSize.init(deviceScreenSize);

  final scaledWidth = screenSize.scaleWidth(100);

  print(scaledWidth);
}
