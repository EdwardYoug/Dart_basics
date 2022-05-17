// ignore_for_file: file_names

import 'dart:io';

import 'package:module2/interface/ServiceInterface.dart';

class ListNumbers implements ServiceInterface {
  @override
  List<num>? getListNumber(String str) {
    List<String> list = str.split(' ');
    late List<num> result = [];

    list.forEach((element) {
      num? numElement = num.tryParse(element);
      if (numElement != null) {
        result.add(numElement);
      }
    });
    return result;
  }

  void execute() {
    print(
        'Введите строку слов разделенных пробелом, содержащую числа(без символов до пробела: "слово 874 слово 32 ..")');
    String? str = stdin.readLineSync();
    print(getListNumber(str!));
  }
}
