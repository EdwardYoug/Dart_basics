import 'package:module2/service/DecimalBinary.dart';
import 'package:module2/service/ListNumbers.dart';
import 'package:module2/service/MapWordCount.dart';
import 'package:module2/service/NODAndNOK.dart';
import 'package:module2/service/NumberSet.dart';
import 'package:module2/service/Point.dart';
import 'package:module2/service/SqrtExt.dart';

import 'interface/ServiceInterface.dart';

class ServiceContainer {
  final Map<int, Map<String, ServiceInterface>> _methods = {
    1: {
      '1 : Метод вычисления НОД и НОК целых чисел': NodAndNok(),
    },
    2: {
      '2 : Перевод из 10 в двичную и обратно': DecimalBinary(),
    },
    3: {
      '3 : Поиск чисел в строке с пробелами': ListNumbers(),
    },
    4: {
      '4 : Map<слово, количество его вхождений>': MapWordCount(),
    },
    5: {
      '5 : Вернет переведенные с английского языка числа от 0 до 9': NumberSet(),
    },
    6: {
      '6 : Класс Point': Point(57.4477,14.1247,26.7415),
    },
    7: {
      '7 : Класс Point zero': Point.zero(),
    },
    8: {
      '8 : Корень n - ой степени': SqrtForExtension(),
    }
  };

  final container = [];

  List<String> getAllMethod() {
    late List<String> allMethods = [];
    _methods.forEach((key, value) {
      value.forEach((key, value) {
        allMethods.add(key);
      });
    });
    return allMethods;
  }

  bool has(int num) {
    return _methods.containsKey(num);
  }

  ServiceInterface get(int num) {
    late ServiceInterface service = ServiceInterface();
    if (has(num)) {
      _methods[num]!.forEach((key, value) {
        service = value;
      });
    }
    return service;
  }
}