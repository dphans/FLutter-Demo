import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Vehicle {
  String name;
  int type;
  int year;
  int purchasedYear;

  Vehicle(this.name, this.type, this.year, this.purchasedYear);

  bool isCar() {
    return type == typeCar;
  }

  bool isBike() {
    return type == typeBike;
  }

  bool isMotorbike() {
    return type == typeMotorbike;
  }

  Widget getIcon() {
    if (isCar()) {
      return Icon(Icons.car_repair);
    }

    if (isBike()) {
      return Icon(Icons.bike_scooter);
    }

    return Icon(Icons.motorcycle);
  }

  void readyToRun() {
    if (year < 2015) {
      debugPrint("Sorry, this vehicle is too old.");
    } else {
      debugPrint("Vehicle is running.");
    }
  }

  static const typeCar = 0;
  static const typeBike = 1;
  static const typeMotorbike = 2;
}
