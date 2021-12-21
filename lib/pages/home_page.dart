import 'package:flutter/material.dart';
import 'package:my_app/model/vehicle.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Vehicle> vehicleItems = [
    Vehicle("Mercedes", Vehicle.typeCar, 2010, 2019),
    Vehicle("Xgame", Vehicle.typeBike, 2012, 2021),
    Vehicle("Honda Wave", Vehicle.typeMotorbike, 2011, 2021),
    Vehicle("Xgame V2", Vehicle.typeBike, 2009, 2021),
    Vehicle("BMW", Vehicle.typeCar, 2007, 2019),
    Vehicle("Xgame 2", Vehicle.typeMotorbike, 2015, 2021),
  ];

  void addVehicle(String name, int type, int year, int purchaseYear) {
    // Add new vehicle to vehicleItems
    setState(() {
      // 1. Tao bien Vehicle
      // Vehicle tenBien = Vehicle(...);
      Vehicle vehicleinput = Vehicle(name, type, year, purchaseYear);

      // 2. Them bien tenBien vao vehicleItems
      // vehicleItems.add(tenBien);
      vehicleItems.add(vehicleinput);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            ListView(
              children: _buildVehicles(),
            ),
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: FloatingActionButton(
                onPressed: () {
                  String name = "";
                  int type = 0;
                  int year = 0;
                  int purchaseYear = 0;

                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text("Add new vehicle"),
                          actions: [
                            ElevatedButton(
                                onPressed: () {
                                  addVehicle(name, type, year, purchaseYear);
                                  Navigator.of(context).pop();
                                },
                                child: const Text("Add")),
                          ],
                          content: Column(
                            children: [
                              Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextField(
                                    decoration: const InputDecoration.collapsed(
                                        hintText: 'Vehicle name'),
                                    onChanged: (text) {
                                      name = text;
                                    },
                                  ),
                                ),
                              ),
                              Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextField(
                                    decoration: const InputDecoration.collapsed(
                                        hintText: 'Vehicle type: 0, 1, 2'),
                                    onChanged: (text) {
                                      type = int.parse(text);
                                    },
                                  ),
                                ),
                              ),
                              Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextField(
                                    decoration: const InputDecoration.collapsed(
                                        hintText: 'Vehicle year'),
                                    onChanged: (text) {
                                      year = int.parse(text);
                                    },
                                  ),
                                ),
                              ),
                              Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextField(
                                    decoration: const InputDecoration.collapsed(
                                        hintText: 'Vehicle purchased year'),
                                    onChanged: (text) {
                                      purchaseYear = int.parse(text);
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      });
                },
                child: const Icon(Icons.add),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildVehicles() {
    List<Widget> vehicleWidgetItems = [];

    for (var vehicle in vehicleItems) {
      vehicleWidgetItems.add(Card(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: vehicle.getIcon(),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      vehicle.name,
                      style: const TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text("Năm sản xuất: ${vehicle.year}"),
                    ),
                    Text("Bán lúc: ${vehicle.purchasedYear}"),
                  ],
                ),
              ),
              IconButton(
                onPressed: () {
                  vehicle.readyToRun();
                },
                icon: const Icon(Icons.check),
              ),
              IconButton(
                onPressed: () {
                  int index =
                      vehicleItems.indexWhere((xe) => xe.name == vehicle.name);
                  if (index < 0) return;
                  setState(() {
                    vehicleItems.removeAt(index);
                  });
                },
                icon: const Icon(Icons.delete),
              ),
            ],
          ),
        ),
      ));
    }

    return vehicleWidgetItems;
  }
}
