class Bicycle {
  int cadence;
  int gear;
  int _speed = 99;

  Bicycle(this.cadence, this.gear);
  int get speed => _speed;
  String info() {
    return 'This bike has: ${cadence.toString()} cadence, ${gear.toString()} gear, and ${_speed.toString()} speed.';
  }

  // @override
  // String toString() => 'Bicycle: $speed mph';
}

void main() {
  var bike = new Bicycle(2, 2);
  print(bike.info());
}
