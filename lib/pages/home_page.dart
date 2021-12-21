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
    Vehicle("Xgame", Vehicle.typeMotorbike, 2015, 2021),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: _buildVehicles(),
        ),
      ),
    );
  }

  List<Widget> _buildVehicles() {
    List<Widget> vehicleWidgetItems = [];
    for (var vehicle in vehicleItems) {
      vehicleWidgetItems.add(Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: vehicle.getIcon(),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
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
              ],
            ),
          ),
        ),
      ));
    }

    return vehicleWidgetItems;
  }
}
