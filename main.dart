import 'dart:math';

class Bicycle {
  int cadence;
  int gear;
  int _speed = 99;

  Bicycle(this.cadence, {this.gear = 1});
  int get speed => _speed;
  String info() {
    return 'This bike has: ${cadence.toString()} cadence, ${gear.toString()} gear, and ${_speed.toString()} speed.';
  }

  // @override
  // String toString() => 'Bicycle: $speed mph';
}

abstract class Shape {
  num get area;
}

class Circle implements Shape {
  final num radius;
  Circle(this.radius);
  num get area => pi * pow(radius, 2);
}

class Square implements Shape {
  final num side;
  Square(this.side);
  num get area => pow(side, 2);
}

Shape shapeFactory(String type) {
  if (type == 'circle') return Circle(2);
  if (type == 'square') return Square(2);
  throw 'Can\'t create $type.';
}

String scream(int length) => "A${'a' * length}h!";

void main() {
  final bike1 = new Bicycle(2, gear: 9);
  final bike2 = new Bicycle(4);
  print(bike1.info());
  print(bike2.info());

  final circle = shapeFactory('circle');
  final square = shapeFactory('square');
  print(circle.area);
  print(square.area);

  // Array
  final values = [1, 2, 3, 5, 10, 50];
  values.map(scream).forEach(print);
  values.reversed.map(scream).forEach(print);

  // Skip array
  values.skip(1).take(3).map(scream).forEach(print);

  print(false ? 'true' : 'false');
  if (false) print('test if one line');
}
