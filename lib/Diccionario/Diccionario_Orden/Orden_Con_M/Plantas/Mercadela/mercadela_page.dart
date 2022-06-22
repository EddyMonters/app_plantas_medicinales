import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_M/Plantas/Mercadela/descripcion_mercadela.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_M/Plantas/Mercadela/habitat_mercadela.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_M/Plantas/Mercadela/modo_empleo_mercadela.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_M/Plantas/Mercadela/nombre_mercadela.dart';
import 'package:flutter/material.dart';

class MercadelaScreen extends StatefulWidget {
  const MercadelaScreen({Key? key}) : super(key: key);

  @override
  State<MercadelaScreen> createState() => _MercadelaScreenState();
}

class _MercadelaScreenState extends State<MercadelaScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Mercadela',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('lib/assets/M/mercadela_0.jpg'),
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
                const NombreMercadelaPage(text: ''),
                DescripcionMercadelaPage(context: context),
                HabitatMercadelaPage(context: context),
                EmplearMercadelaPage(context: context),
              ],
            ),
          ),
        ),
      );
}
