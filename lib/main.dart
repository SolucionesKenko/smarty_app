//Test de kabanta UX

import 'package:flutter/material.dart';
import 'Pages/history.dart';
import 'Pages/home.dart';
import 'Pages/perfil.dart';
import 'Pages/settings.dart';
void main() {
  runApp(const MySmartApp());
}


// Inicializaci¨®n de la APP
class MySmartApp extends StatelessWidget {
  const MySmartApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: DataPage(),
        );
  }
}

//Data main screen

class DataPage extends StatefulWidget {
  const DataPage({super.key});
  @override
  State<DataPage> createState() => _DataPageState();
}

class _DataPageState extends State<DataPage> {

  int currentIndex= 0;

  final List<Widget> _widgetOptions = <Widget> [
    const Home(),
    const History(),
    const Perfil(),
    const Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[currentIndex],
      //Botones de Navegaci¨®n
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        currentIndex: currentIndex,
        items: <BottomNavigationBarItem>[
      //Home Button
         BottomNavigationBarItem(
          label: 'Inicio',
          icon: Icon(
            Icons.home,
            color: currentIndex == 0 ? Colors.blueGrey : Colors.black
          ),
         ),
      //History Button
          BottomNavigationBarItem(
          label: 'Historial',
          icon: Icon(
            Icons.history,
            color: currentIndex == 1 ? Colors.blueGrey : Colors.black
          ),
        ),
        //Account Button
          BottomNavigationBarItem(
          label: 'Perfil',
          icon: Icon(
            Icons.person,
            color: currentIndex == 2 ? Colors.blueGrey : Colors.black
          ),
          ), 
        // Settings Button
        BottomNavigationBarItem(
          label: ("Configuraci\u00F3n"),
          icon: Icon(
            Icons.settings,
            color: currentIndex == 3 ? Colors.blueGrey : Colors.black
          ),
          ),  
       ],
      selectedItemColor: Colors.blueGrey,
      ),
    );
  }
}
