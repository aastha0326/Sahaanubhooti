import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sahaanubhooti/models/info.dart';

class Information extends ChangeNotifier {
  List<Info> _information = [
    Info(
        color: Color(0xff93b2df),
        infoId: 1,
        message: 'Keep social distances when you are outside.'),
    Info(
        color: Color(0xffb2d3c2),
        infoId: 2,
        message: 'Use hand sanitizer, mask and gloves to protect yourself.'),
    Info(
        color: Color(0xffffe584),
        infoId: 3,
        message:
            'Avoid smoking and taking other drugs as it will effect your lungs.'),
    Info(
        color: Color(0xffc4faf8),
        infoId: 4,
        message:
            'Eat healthy foods and do exercise to boost your immune system.'),
    Info(
        color: Color(0xffdcd3ff),
        infoId: 5,
        message: 'Consult with doctor if you feel ill.'),
    Info(
        color: Color(0xfffbefff),
        infoId: 6,
        message: 'Read books and spend time with family to avoid depression.'),
  ];

  List<Info> get infoList {
    final baseInfoList = [..._information];
    return baseInfoList;
  }
}
