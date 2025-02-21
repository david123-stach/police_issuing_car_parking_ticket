import 'package:flutter/material.dart';
import 'models/ParkedCar.dart';
import 'models/ParkingMeter.dart';
import 'models/PoliceOfficer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Parking Ticket Simulator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();
  final _carMakeController = TextEditingController();
  final _carModelController = TextEditingController();
  final _carColorController = TextEditingController();
  final _carLicenseController = TextEditingController();
  final _minutesParkedController = TextEditingController();
  final _minutesPurchasedController = TextEditingController();
  final _officerNameController = TextEditingController();
  final _badgeNumberController = TextEditingController();

  String _result = '';

  void _issueTicket() {
    if (_formKey.currentState!.validate()) {
      // Create instances of ParkedCar and ParkingMeter
      ParkedCar car = ParkedCar(
        _carMakeController.text,
        _carModelController.text,
        _carColorController.text,
        _carLicenseController.text,
        int.parse(_minutesParkedController.text),
      );
      ParkingMeter meter = ParkingMeter(int.parse(_minutesPurchasedController.text));

      // Create instance of PoliceOfficer
      PoliceOfficer officer = PoliceOfficer(
        _officerNameController.text,
        _badgeNumberController.text,
      );

      // Examine the parked car and issue a ticket if necessary
      var ticket = officer.issueTicket(car, meter);

      // Show the ticket details
      setState(() {
        if (ticket != null) {
          _result = ticket.toString();
        } else {
          _result = 'No parking ticket issued.';
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Parking Ticket Simulator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _carMakeController,
                decoration: InputDecoration(labelText: 'Car Make'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the car make';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _carModelController,
                decoration: InputDecoration(labelText: 'Car Model'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the car model';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _carColorController,
                decoration: InputDecoration(labelText: 'Car Color'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the car color';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _carLicenseController,
                decoration: InputDecoration(labelText: 'Car License Number'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the car license number';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _minutesParkedController,
                decoration: InputDecoration(labelText: 'Minutes Parked'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty || int.tryParse(value) == null) {
                    return 'Please enter valid minutes parked';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _minutesPurchasedController,
                decoration: InputDecoration(labelText: 'Minutes Purchased'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty || int.tryParse(value) == null) {
                    return 'Please enter valid minutes purchased';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _officerNameController,
                decoration: InputDecoration(labelText: 'Officer Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the officer name';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _badgeNumberController,
                decoration: InputDecoration(labelText: 'Badge Number'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the badge number';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: _issueTicket,
                child: Text('Issue Ticket'),
              ),
              SizedBox(height: 16.0),
              Text(_result, style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }
}
