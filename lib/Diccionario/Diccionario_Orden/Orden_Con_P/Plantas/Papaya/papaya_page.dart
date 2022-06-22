import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_P/Plantas/Papaya/descripcion_papaya.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_P/Plantas/Papaya/habitat_papaya.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_P/Plantas/Papaya/modo_empleo_papaya.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_P/Plantas/Papaya/nombre_papaya.dart';
import 'package:flutter/material.dart';

class PapayaScreen extends StatefulWidget {
  const PapayaScreen({Key? key}) : super(key: key);

  @override
  State<PapayaScreen> createState() => _PapayaScreenState();
}

class _PapayaScreenState extends State<PapayaScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Papaya',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('lib/assets/P/papaya_0.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              elevation: 15,
              shadowColor: Colors.amber[900],
              bottom: const TabBar(
                indicatorColor:
                    Colors.amberAccent, //para colocar el color de la barra
                indicatorWeight: 5, //indicar el tamaño de grosor de la barra
                tabs: [
                  Tab(icon: Icon(Icons.local_florist), text: 'Nombre'),
                  Tab(icon: Icon(Icons.menu_book), text: 'Descripción'),
                  Tab(icon: Icon(Icons.landscape), text: 'Hábitat'),
                  Tab(icon: Icon(Icons.next_week), text: 'Se emplea para...'),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                const NombrePapayaPage(text: ''),
                DescripcionPapayaPage(context: context),
                HabitatPapayaPage(context: context),
                EmplearPapayaPage(context: context),
              ],
            ),
          ),
        ),
      );
}
