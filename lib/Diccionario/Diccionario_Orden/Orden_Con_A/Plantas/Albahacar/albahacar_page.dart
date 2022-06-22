import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_A/Plantas/Albahacar/descripcion_albahacar.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_A/Plantas/Albahacar/habitat_albahacar.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_A/Plantas/Albahacar/modo_empleo_albahacar.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_A/Plantas/Albahacar/nombre_comun_albahacar.dart';
import 'package:flutter/material.dart';

class AlbahacarScreen extends StatefulWidget {
  const AlbahacarScreen({Key? key}) : super(key: key);

  @override
  State<AlbahacarScreen> createState() => _AlbahacarScreenState();
}

class _AlbahacarScreenState extends State<AlbahacarScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Albahacar',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('lib/assets/albahacar/albahacar_1.jpg'),
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
                const NombreComunAlbahacaPage(text: ''),
                DescripcionAlbahacaPage(context: context),
                HabitatAlbahacaPage(context: context),
                EmplearAlbahacarPage(context: context),
              ],
            ),
          ),
        ),
      );
}
