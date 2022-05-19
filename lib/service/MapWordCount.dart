// ignore_for_file: file_names, empty_catches

import 'dart:io';

import 'package:module2/interface/ServiceInterface.dart';

class MapWordCount implements ServiceInterface{
  Map<String, int> ?getMapWordsCount(List<String> words){
    Map<String, int> result = {};
    for(String word in words) {
      if(result.containsKey(word)) {
        result[word] = result[word]! + 1;
        continue;
      }
      result[word] = 1;
    }
    return result;
  }

  @override
  void execute() {
    print('Введите слова через пробел');
    String ?words = stdin.readLineSync();
    print(getMapWordsCount(words!.split(' ')));
  }
}