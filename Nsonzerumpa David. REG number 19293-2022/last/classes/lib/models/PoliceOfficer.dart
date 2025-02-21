import 'ParkedCar.dart';
import 'ParkingMeter.dart';
import 'ParkingTicket.dart';

class PoliceOfficer {
  String _name;
  String _badgeNumber;

  PoliceOfficer(this._name, this._badgeNumber);

  // Getters
  String get name => _name;
  String get badgeNumber => _badgeNumber;

  // Setters
  set name(String value) => _name = value;
  set badgeNumber(String value) => _badgeNumber = value;

  ParkingTicket? issueTicket(ParkedCar car, ParkingMeter meter) {
    int overTime = car.minutesParked - meter.minutesPurchased;
    if (overTime > 0) {
      double fine = 25.0 + (overTime / 60) * 10.0;
      return ParkingTicket(car.make, car.model, car.color, car.licenseNumber, fine, _name, _badgeNumber);
    }
    return null;
  }

  @override
  String toString() {
    return 'PoliceOfficer{name: $_name, badgeNumber: $_badgeNumber}';
  }
}
