// ignore_for_file: file_names

import 'dart:io';

import 'package:module2/interface/ServiceInterface.dart';
import 'package:module2/extensions/sqrtn.dart';

class SqrtForExtension implements ServiceInterface {
  @override
  void execute() {
    try {
      print('Введите число');
      final num numbers = double.parse(stdin.readLineSync()!);
      print('Введите степень корня');
      final num degree = double.parse(stdin.readLineSync()!);
      print(numbers.getSqrtN(degree));
    } catch (e) {
      print('Видимо, были введены не те данные. Давай сначала!');
    }
  }
}
