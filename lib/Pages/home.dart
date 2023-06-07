import 'package:flutter/material.dart';
import 'package:smarty_app/bluetooth.dart';
import 'package:provider/provider.dart';
import 'package:smarty_app/temp_provider.dart';
import 'package:smarty_app/hum_provider.dart';


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
      appBar: AppBar(
        title: Image.asset('Images/logopage.png',
            fit: BoxFit.cover,
            height: 100,
            width: 130),
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.bluetooth,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => const FindDevicesScreen (),
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
                  height: 45,
                  width: 140,
                  color: null,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 115,
                        child: Row(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Consumer<TempProvider>(
                                  builder: (context, temp, _) =>
                                      Text(temp.temp)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 25,
                        child: Row(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Consumer<HumProvider>(
                                  builder: (context, hum, _) =>
                                      Text(hum.hum)),
                            ),
                          ],
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
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
