import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_E/Plantas/Estafiate/descripcion_estafiate.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_E/Plantas/Estafiate/habitat_estafiate.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_E/Plantas/Estafiate/modo_empleo_estafiate.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_E/Plantas/Estafiate/nombre_comun_estafiate.dart';
import 'package:flutter/material.dart';

class EstafiateScreen extends StatefulWidget {
  const EstafiateScreen({Key? key}) : super(key: key);

  @override
  State<EstafiateScreen> createState() => _EstafiateScreenState();
}

class _EstafiateScreenState extends State<EstafiateScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Estafiate',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('lib/assets/D/Estafiate_0.jpg'),
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
                const NombreEstafiatePage(text: ''),
                DescripcionEstafiatePage(context: context),
                HabitatEstafiatePage(context: context),
                EmplearEstafiatePage(context: context),
              ],
            ),
          ),
        ),
      );
}
