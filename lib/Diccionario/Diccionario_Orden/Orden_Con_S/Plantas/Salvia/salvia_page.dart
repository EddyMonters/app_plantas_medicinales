import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_S/Plantas/Salvia/descripcion_salvia.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_S/Plantas/Salvia/habitat_salvia.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_S/Plantas/Salvia/modo_empleo_salvia.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_S/Plantas/Salvia/nombre_salvia.dart';
import 'package:flutter/material.dart';

class SalviaScreen extends StatefulWidget {
  const SalviaScreen({Key? key}) : super(key: key);

  @override
  State<SalviaScreen> createState() => _SalviaScreenState();
}

class _SalviaScreenState extends State<SalviaScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Salvia',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('lib/assets/P/salvia_0.jpg'),
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
                const NombreSalviaPage(text: ''),
                DescripcionSalviaPage(context: context),
                HabitatSalviaPage(context: context),
                EmplearSalviaPage(context: context),
              ],
            ),
          ),
        ),
      );
}
