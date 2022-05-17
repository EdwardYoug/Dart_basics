
// ignore_for_file: file_names

import 'container.dart';

class HomeWork {
  late ServiceContainer _container;

  HomeWork(ServiceContainer container) {
    _container = container;
  }

  void printAllMethods() {
    _container.getAllMethod().forEach((element) {
      print(element);
    });
  }

  void execute(int methodNumber) {
    _container.get(methodNumber).execute();
  }
}