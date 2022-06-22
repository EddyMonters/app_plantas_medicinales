import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_con_B/Plantas/Candelilla/descripcion_candelilla.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_con_B/Plantas/Candelilla/habitat_candelilla.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_con_B/Plantas/Candelilla/modo_empleo_candelilla.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_con_B/Plantas/Candelilla/nombre_comun_candelilla.dart';
import 'package:flutter/material.dart';

class CandelillaScreen extends StatefulWidget {
  const CandelillaScreen({Key? key}) : super(key: key);

  @override
  State<CandelillaScreen> createState() => _CandelillaScreenState();
}

class _CandelillaScreenState extends State<CandelillaScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Candelilla',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('lib/assets/B/Candelilla/Candelilla_0.png'),
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
                const NombreComunCandelillaPage(text: ''),
                DescripcionCandelillaPage(context: context),
                HabitatCandelillaPage(context: context),
                EmplearCandelillaPage(context: context),
              ],
            ),
          ),
        ),
      );
}
