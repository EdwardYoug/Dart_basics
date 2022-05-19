import 'dart:io';

import 'package:module2/HomeWork.dart';
import 'package:module2/container.dart';

void main(List<String> arguments) {
  var container = ServiceContainer();
  var controller = HomeWork(container);
  do {
    controller.printAllMethods();
    try {
      int methodNumber = int.parse(stdin.readLineSync()!);
      controller.execute(methodNumber);
    } catch (e) {
      //throw ArgumentError('Введите число');
      print('Ошибка! ' + e.toString());
    }
  } while(true);
}