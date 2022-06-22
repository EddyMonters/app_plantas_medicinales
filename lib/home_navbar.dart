import 'package:app_plantas_medicinales/Definiciones/definiciones_segundo_page.dart';
import 'package:flutter/material.dart';
import 'package:app_plantas_medicinales/screens/screens.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();

  Widget build(BuildContext context) {
    return const Scaffold();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  // ignore: non_constant_identifier_names
  final NavigationKey = GlobalKey<CurvedNavigationBarState>();

  int index = 2;

  final screens = [
    const TratamientosPage(),
    const DiccionarioPage(),
    const ImportanciaPage(),
    const DefinicionesSegundoPage(),
    const OpcionesPage(),
  ];

  @override
  Widget build(BuildContext context) {
    //agregar iconos
    final items = <Widget>[
      const Icon(Icons.medical_services, size: 35),
      const Icon(Icons.auto_stories, size: 35),
      const Icon(Icons.local_florist, size: 35),
      const Icon(Icons.help, size: 35),
      const FaIcon(
        FontAwesomeIcons.solidAddressCard,
        size: 32,
      ),
      //const Icon(Icons.assignment_rounded, size: 35),
    ];

    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      // appBar: AppBar(title: const Text('Plantas Medicinales')),
      body: screens[index],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        child: CurvedNavigationBar(
          key: NavigationKey,
          color: Colors.green,
          buttonBackgroundColor: Colors.deepOrangeAccent,
          backgroundColor: Colors.transparent,
          height: 60,
          animationCurve: Curves.easeInOut,
          animationDuration: const Duration(milliseconds: 350),
          index: index,
          items: items,
          onTap: (index) => setState(() => this.index = index),
        ),
      ),
    );
  }
}
