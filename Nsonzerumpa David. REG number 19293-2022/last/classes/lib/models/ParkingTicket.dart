class ParkingTicket {
  String _make;
  String _model;
  String _color;
  String _licenseNumber;
  double _fine;
  String _officerName;
  String _badgeNumber;

  ParkingTicket(this._make, this._model, this._color, this._licenseNumber, this._fine, this._officerName, this._badgeNumber);

  // Getters
  String get make => _make;
  String get model => _model;
  String get color => _color;
  String get licenseNumber => _licenseNumber;
  double get fine => _fine;
  String get officerName => _officerName;
  String get badgeNumber => _badgeNumber;

  // Setters
  set make(String value) => _make = value;
  set model(String value) => _model = value;
  set color(String value) => _color = value;
  set licenseNumber(String value) => _licenseNumber = value;
  set fine(double value) => _fine = value;
  set officerName(String value) => _officerName = value;
  set badgeNumber(String value) => _badgeNumber = value;

  @override
  String toString() {
    return 'ParkingTicket{make: $_make, model: $_model, color: $_color, licenseNumber: $_licenseNumber, fine: $_fine, officerName: $_officerName, badgeNumber: $_badgeNumber}';
  }
}
