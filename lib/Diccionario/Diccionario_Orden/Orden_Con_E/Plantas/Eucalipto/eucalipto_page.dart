import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_E/Plantas/Eucalipto/descripcion_eucalipto.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_E/Plantas/Eucalipto/habitat_aucalipto.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_E/Plantas/Eucalipto/modo_empelo_eucalipto.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_E/Plantas/Eucalipto/nombre_eucalipto.dart';
import 'package:flutter/material.dart';

class EucaliptoScreen extends StatefulWidget {
  const EucaliptoScreen({Key? key}) : super(key: key);

  @override
  State<EucaliptoScreen> createState() => _EucaliptoScreenState();
}

class _EucaliptoScreenState extends State<EucaliptoScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Eucalipto',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('lib/assets/D/Eucalipto_0.jpg'),
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
                const NombreEucaliptoPage(text: ''),
                DescripcionEucaliptoPage(context: context),
                HabitatEucaliptoPage(context: context),
                EmplearEucaliptoPage(context: context),
              ],
            ),
          ),
        ),
      );
}
