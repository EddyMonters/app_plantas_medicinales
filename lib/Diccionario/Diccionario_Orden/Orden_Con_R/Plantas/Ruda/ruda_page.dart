import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_R/Plantas/Ruda/descripcion_ruda.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_R/Plantas/Ruda/habitat_ruda.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_R/Plantas/Ruda/modo_empleo_ruda.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_R/Plantas/Ruda/nombre_ruda.dart';
import 'package:flutter/material.dart';

class RudaScreen extends StatefulWidget {
  const RudaScreen({Key? key}) : super(key: key);

  @override
  State<RudaScreen> createState() => _RudaScreenState();
}

class _RudaScreenState extends State<RudaScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Ruda',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('lib/assets/P/ruda_0.jpg'),
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
                const NombreRudaPage(text: ''),
                DescripcionRudaPage(context: context),
                HabitatRudaPage(context: context),
                EmplearRudaPage(context: context),
              ],
            ),
          ),
        ),
      );
}
