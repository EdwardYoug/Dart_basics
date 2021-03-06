// ignore_for_file: file_names

import 'dart:io';

import 'package:module2/interface/ServiceInterface.dart';

class NumberSet implements ServiceInterface {
  final Map<String, num> _map = {
    'one':1,
    'two':2,
    'three':3,
    'four':4,
    'five':5,
    'six':6,
    'seven':7,
    'eight':8,
    'nine':9,
  };

  Set<num> getNumber(String str){
    List<String> list = List.empty();
    Set<num> result = {};
    list = str.split(' ');
    for (var element in list) {
      if (_map.containsKey(element)){
        result.add(_map[element]!);
      }
    }
    return result;
  }

  @override
  void execute() {
    print('Введите числа в любой последовательности с повторениями на английском языке');
    String ?numbers = stdin.readLineSync();
    print(getNumber(numbers!));
  }
}