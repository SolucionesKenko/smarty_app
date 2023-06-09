import 'package:flutter/material.dart';
import 'package:smarty_app/bluetooth.dart';
import 'package:provider/provider.dart';
import 'package:smarty_app/Providers/s1_provider.dart';
import 'package:smarty_app/Providers/s2_provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Image.asset('Images/logopage.png',
            fit: BoxFit.cover, height: 100, width: 130),
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.bluetooth,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => const FindDevicesScreen(),
              ));
            },
          ),
        ],
      ),
      body: const Center(
        child: LabelsTem(),
      ),
    );
  }
}

class LabelsTem extends StatefulWidget {
  const LabelsTem({super.key});

  @override
  State<LabelsTem> createState() => _LabelsTemState();
}

class _LabelsTemState extends State<LabelsTem> {
  double _value = 50.0; // Valor inicial

Color _getColor(double value) {
  if (value <= 33) {
    // Rango del 1 al 33: Verde a Amarillo
    final red = (255 * value / 33).round();
    final green = 255;
    return Color.fromARGB(255, red, green, 0);
  } else if (value <= 67) {
    // Rango del 34 al 66: Amarillo a Rojo
    final red = 255;
    final green = (255 * (100 - value) / 33).round();
    return Color.fromARGB(255, red, green, 0);
  } else {
    // Rango del 67 al 100: Rojo
    return Colors.red;
  }
}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("Images/piecitosedit4.png"),
          fit: BoxFit.fitWidth,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              children: [
                //Container 1
                Container(
                  height: 75,
                  color: null,
                ),
                //Container 2
                Container(
                  width: 170,
                  height: 45,
                  child: Row(
                    children: [
                      Expanded(
                        child: Consumer<S1Provider>(
                          builder: (context, s1, _) {
                            double value = double.tryParse(s1.s1) ?? 0.0; // Obtener el valor del Consumer
                            Color circleColor = _getColor(
                                value); // Obtener el color seg¨²n el valor

                            return Container(
                              margin: EdgeInsets.only(right: 30),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: circleColor,
                              ),
                              child: Center(child: Text(s1.s1)),
                            );
                          },
                        ),
                      ),
                      Expanded(
                        child: Consumer<S2Provider>(
                          builder: (context, s2, _) {
                            double value =  double.tryParse(s2.s2) ?? 0.0;// Obtener el valor del Consumer
                            Color circleColor = _getColor(
                                value); // Obtener el color seg¨²n el valor

                            return Container(
                              margin: EdgeInsets.only(left: 25),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: circleColor,
                              ),
                              child: Center(child: Text(s2.s2)),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),

                //Container 3
                Container(
                  height: 140,
                  width: 350,
                  color: null,
                  child: const Row(
                    children: [
                      SizedBox(
                        width: 50,
                        height: 70,
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text("S7"),
                        ),
                      ),
                      SizedBox(
                        width: 50,
                        height: 70,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("S5"),
                        ),
                      ),
                      SizedBox(
                        width: 50,
                        height: 70,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Text("S3"),
                        ),
                      ),
                      SizedBox(
                        width: 44,
                        height: 70,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(""),
                        ),
                      ),
                      SizedBox(
                        width: 50,
                        height: 70,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Text("S4"),
                        ),
                      ),
                      SizedBox(
                        width: 50,
                        height: 70,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("S6"),
                        ),
                      ),
                      SizedBox(
                        width: 50,
                        height: 70,
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text("S8"),
                        ),
                      ),
                    ],
                  ),
                ),
                //Container 4
                Container(
                  height: 80,
                  width: 350,
                  color: null,
                  child: const Row(
                    children: [
                      SizedBox(
                        width: 175,
                        height: 80,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("S9"),
                        ),
                      ),
                      SizedBox(
                        width: 175,
                        height: 80,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("S10"),
                        ),
                      ),
                    ],
                  ),
                ),
                //Container 5
                Container(
                  height: 125,
                  width: 300,
                  color: null,
                  child: const Row(
                    children: [
                      SizedBox(
                        width: 150,
                        height: 80,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("S11"),
                        ),
                      ),
                      SizedBox(
                        width: 150,
                        height: 80,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("S12"),
                        ),
                      ),
                    ],
                  ),
                ),
                //Container 6
                Expanded(
                    child: Column(
                  children: [
                    IconButton(
                      icon: Icon(Icons.refresh, color: Colors.pink.shade200),
                      onPressed: () {},
                    ),
                    const Text('Refresh'),
                  ],
                )),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
