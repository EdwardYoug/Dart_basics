
// ignore_for_file: file_names

import 'dart:io';

import 'package:module2/interface/ServiceInterface.dart';

class NodAndNok implements ServiceInterface{
  @override
  void execute() {
    try {
      print('НОД и НОК. Введите первое число');
      int a = int.parse(stdin.readLineSync()!);

      print('НОД и НОК. Введите второе число');
      int b = int.parse(stdin.readLineSync()!);

      print('Введите число для разложения на множетели.');
      int c = int.parse(stdin.readLineSync()!);
      print('НОД: ' +_nOD(a, b).toString() + '\n' + 'НОК: '
          +_nOK(a.toDouble(),b.toDouble()).round().toString()+ '\n'
          +'Множетели числа '+c.toString()+': '+multipliers(c).toString());
    } catch (e) {
      //throw ArgumentError('Введите число');
      print('Ошибка ввода');
    }
  }

  List<int> multipliers(int c){
    int div = 2;
    late List<int> result = [];
    while (c>1){
      while (c % div == 0){
        result.add(div);
        c = (c / div).round();
      }
      div++;
    }
    return result;
  }

  double _nOK(double a, double b){
    if (b==0) {
      return a;
    } else {
      return a*b / _nOD(b.round(), a.round());
    }
  }

  int _nOD(int a, int b){
    while (a!=b) {
      if(a > b){
        int tmp = a;
        a = b;
        b = tmp;
      }
      b = b - a;
    }
    return a;
  }

}