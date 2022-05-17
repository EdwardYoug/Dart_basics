import 'dart:io';

import 'package:module2/HomeWork.dart';
import 'package:module2/container.dart';

void main(List<String> arguments) {
  var Container = ServiceContainer();
  var Controller = HomeWork(Container);
  do {
    Controller.printAllMethods();
    try {
      int methodNumber = int.parse(stdin.readLineSync()!);
      Controller.execute(methodNumber);
    } catch (e) {
      //throw ArgumentError('Введите число');
      print('Ошибка! ' + e.toString());
    }
  } while(true);
}