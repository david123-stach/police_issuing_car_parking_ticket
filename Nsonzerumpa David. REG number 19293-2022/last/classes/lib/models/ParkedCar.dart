class ParkedCar {
  String _make;
  String _model;
  String _color;
  String _licenseNumber;
  int _minutesParked;

  ParkedCar(this._make, this._model, this._color, this._licenseNumber, this._minutesParked);

  // Getters
  String get make => _make;
  String get model => _model;
  String get color => _color;
  String get licenseNumber => _licenseNumber;
  int get minutesParked => _minutesParked;

  // Setters
  set make(String value) => _make = value;
  set model(String value) => _model = value;
  set color(String value) => _color = value;
  set licenseNumber(String value) => _licenseNumber = value;
  set minutesParked(int value) => _minutesParked = value;

  @override
  String toString() {
    return 'ParkedCar{make: $_make, model: $_model, color: $_color, licenseNumber: $_licenseNumber, minutesParked: $_minutesParked}';
  }
}
