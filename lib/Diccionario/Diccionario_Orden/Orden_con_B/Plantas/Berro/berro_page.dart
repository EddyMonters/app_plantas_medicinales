import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_con_B/Plantas/Berro/descripcion_berro.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_con_B/Plantas/Berro/habitat_berro.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_con_B/Plantas/Berro/modo_empleo_berro.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_con_B/Plantas/Berro/nombre_comun_berro.dart';
import 'package:flutter/material.dart';

class BerroScreen extends StatefulWidget {
  const BerroScreen({Key? key}) : super(key: key);

  @override
  State<BerroScreen> createState() => _BerroScreenState();
}

class _BerroScreenState extends State<BerroScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Berro',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('lib/assets/B/berro/berro_1.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              elevation: 15,
              shadowColor: Colors.green,
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
                const NombreComunBerroPage(text: ''),
                DescripcionBerroPage(context: context),
                HabitatBerroPage(context: context),
                EmplearBerroPage(context: context),
              ],
            ),
          ),
        ),
      );
}
