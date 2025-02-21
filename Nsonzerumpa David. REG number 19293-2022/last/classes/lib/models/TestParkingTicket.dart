import 'ParkedCar.dart';
import 'ParkingMeter.dart';
import 'PoliceOfficer.dart';

void main() {
  // Create instances of ParkedCar and ParkingMeter
  ParkedCar car = ParkedCar("Toyota", "Corolla", "Blue", "XYZ123", 120);
  ParkingMeter meter = ParkingMeter(60);

  // Create instance of PoliceOfficer
  PoliceOfficer officer = PoliceOfficer("John Doe", "12345");

  // Examine the parked car and issue a ticket if necessary
  var ticket = officer.issueTicket(car, meter);

  // Print the ticket details if a ticket was issued
  if (ticket != null) {
    print(ticket);
  } else {
    print("No parking ticket issued.");
  }
}
