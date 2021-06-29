class MoneyEntry {
  double value = 0;
  var _date = null;
  var _revised = null;

  MoneyEntry({double amount = 0}) {
    var now = DateTime.now();
    _date = now;
    _revised = now;
    value = amount;
  }

  void update(double d) {
    this._revised = DateTime.now();
    this.value = d;
  }

  DateTime get edited {
    return _revised;
  }
}
