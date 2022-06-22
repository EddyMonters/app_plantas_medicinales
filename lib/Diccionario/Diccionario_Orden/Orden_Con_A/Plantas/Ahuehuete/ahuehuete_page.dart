import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_A/Plantas/Ahuehuete/descripcion_ahuehuete.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_A/Plantas/Ahuehuete/habitat_ahuehuete.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_A/Plantas/Ahuehuete/modo_empleo_ahuehuete.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_A/Plantas/Ahuehuete/nombre_comun_ahuehuete.dart';
import 'package:flutter/material.dart';

class AhuehueteScreen extends StatefulWidget {
  const AhuehueteScreen({Key? key}) : super(key: key);

  @override
  State<AhuehueteScreen> createState() => _AhuehueteScreenState();
}

class _AhuehueteScreenState extends State<AhuehueteScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Ahuehuete',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('lib/assets/ahuehuete/ahuehuete_1.jpg'),
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
                const NombreComunAhuehuetePage(text: ''),
                DescripcionAhuehuetePage(context: context),
                HabitatAhuehuetePage(context: context),
                EmplearAhuehuetePage(context: context),
              ],
            ),
          ),
        ),
      );
}
