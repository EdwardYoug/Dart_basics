// ignore_for_file: file_names

import 'dart:io';

import 'package:module2/interface/ServiceInterface.dart';

class DecimalBinary implements ServiceInterface{
  @override
  void execute() {
    print('Введите первое число для перевода в десятичную систему');
    int a = int.parse(stdin.readLineSync()!,radix:2);

    print('Введите первое число для перевода в двоичную систему');
    int b = int.parse(stdin.readLineSync()!);

    print(a.toRadixString(2).toString()+'=>'+ a.toRadixString(10));
    print(b.toString()+'=>'+ b.toRadixString(2));
  }

}