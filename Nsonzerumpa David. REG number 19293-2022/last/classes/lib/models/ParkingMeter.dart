class ParkingMeter {
  int _minutesPurchased;

  ParkingMeter(this._minutesPurchased);

  // Getter
  int get minutesPurchased => _minutesPurchased;

  // Setter
  set minutesPurchased(int value) => _minutesPurchased = value;

  @override
  String toString() {
    return 'ParkingMeter{minutesPurchased: $_minutesPurchased}';
  }
}
