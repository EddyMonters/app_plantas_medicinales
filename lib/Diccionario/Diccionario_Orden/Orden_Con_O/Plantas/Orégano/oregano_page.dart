import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_O/Plantas/Or%C3%A9gano/descripcion_oregano.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_O/Plantas/Or%C3%A9gano/habitat_oregano.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_O/Plantas/Or%C3%A9gano/modo_empleo_oregano.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_O/Plantas/Or%C3%A9gano/nombre_oregano.dart';
import 'package:flutter/material.dart';

class OreganoScreen extends StatefulWidget {
  const OreganoScreen({Key? key}) : super(key: key);

  @override
  State<OreganoScreen> createState() => _OreganoScreenState();
}

class _OreganoScreenState extends State<OreganoScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Orégano',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('lib/assets/M/oregano_0.jpg'),
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
                const NombreOreganoPage(text: ''),
                DescripcionOreganoPage(context: context),
                HabitatOreganoPage(context: context),
                EmplearOreganoPage(context: context),
              ],
            ),
          ),
        ),
      );
}
