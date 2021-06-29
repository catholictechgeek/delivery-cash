import 'dart:collection';
import 'package:uber_cash_companion/MoneyEntry.dart';

class MoneyCollection with ListMixin<MoneyEntry> {
  final List<MoneyEntry> _l = [];
  //MyCustomList();

  set length(int newLength) {
    _l.length = newLength;
  }

  int get length => _l.length;
  MoneyEntry operator [](int index) => _l[index];
  void operator []=(int index, MoneyEntry value) {
    _l[index] = value;
  }

  // your custom methods
  double sum() {
    double total = 0;
    for (int i = 0; i < this.length; i++) {
      total += this[i].value;
    }
    return total;
  }

/*
double sumForTime(Time) {
  return 0;
}
*/

  List<MoneyEntry> withinRange(DateTime start, DateTime end) {
    //first figure out max and difference
    List<MoneyEntry> ranged = [];
    for (int i = 0; i < _l.length; i++) {
      var current = _l[i].edited;
      if ((current.isAfter(start) || current.isAtSameMomentAs(start)) &&
          (current.isBefore(end) || current.isAtSameMomentAs(end))) {
        ranged.add(_l[i]);
      }
    }
    return ranged;
  }
}
