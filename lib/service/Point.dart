// ignore_for_file: file_names

import 'dart:io';
import 'dart:math';

import 'package:module2/interface/ServiceInterface.dart';

class Point implements ServiceInterface {
  double _x = 57.4477;
  double _y = 14.1247;
  double _z = 26.7415;

  Point(double x,y,z){
    _x = x;
    _y = y;
    _z = z;
  }

  factory Point.zero() {
    return Point(0.0,0.0,0.0);
  }

  double distanceTo(double x, y, z) {
    return sqrt(pow((_x - x).abs(), 2) +
        pow((_y - y).abs(), 2) +
        pow((_z - z).abs(), 2));
  }

  double lengthEdge(List<String> a,b) {
    return sqrt(pow(double.parse(a[0]) - double.parse(b[0]),2)+
        pow(double.parse(a[1]) - double.parse(b[1]),2)+
        pow(double.parse(a[2]) - double.parse(b[2]),2));
  }

  double squareTo(List<List<String>> triangle) {
    double aB = lengthEdge(triangle[0],triangle[1]);
    double bC = lengthEdge(triangle[1],triangle[2]);
    double aC = lengthEdge(triangle[2],triangle[0]);

    double p = (aB + bC + aC) / 2;
    double s = sqrt((p-aB)*(p-aC)*(p-bC)*p);
    return s;
  }

  void pointDistanse() {
    try {
      print('X:');
      double? x = double.parse(stdin.readLineSync()!);
      print('Y:');
      double? y = double.parse(stdin.readLineSync()!);
      print('Z:');
      double? z = double.parse(stdin.readLineSync()!);
      print(distanceTo(x, y, z));
    } catch (e) {
      print('Видимо, были введены не те данные. Давай сначала!');
    }
  }

  void squareTriangle() {
    try {
      List<List<String>> triangle = [];
      for (int i = 0; i <= 2; i++) {
        print('Точка $i(x,y,z) (в формате 0.0 0.0 0.0)');
        String point = stdin.readLineSync()!;
        List<String> xyz = point.split(' ');
        triangle.add(xyz);
      }
      print('Площадь треугольника: ' + squareTo(triangle).toString());
    } catch (e) {
      print('Видимо, были введены не те данные. Давай сначала!');
    }
  }

  @override
  void execute() {
    print('1 : Расстояние от данной точки до точки в параметре\n'
        '2 : Площадь треугольника в трёхмерном пространстве');
    try {
      switch (int.parse(stdin.readLineSync()!)) {
        case 1:
          pointDistanse();
          break;
        case 2:
          squareTriangle();
          break;
      }
    } catch (e) {
      print('Видимо, были введены не те данные. Давай сначала!');
    }
  }
}
