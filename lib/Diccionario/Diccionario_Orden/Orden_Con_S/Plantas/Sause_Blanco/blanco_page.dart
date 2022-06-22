import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_S/Plantas/Sause_Blanco/descripcion_blanco.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_S/Plantas/Sause_Blanco/habitat_blanco.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_S/Plantas/Sause_Blanco/modo_empleo_blanco.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_S/Plantas/Sause_Blanco/nombre_blanco.dart';
import 'package:flutter/material.dart';

class SauseBlancoScreen extends StatefulWidget {
  const SauseBlancoScreen({Key? key}) : super(key: key);

  @override
  State<SauseBlancoScreen> createState() => _SauseBlancoScreenState();
}

class _SauseBlancoScreenState extends State<SauseBlancoScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Sause Blanco',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('lib/assets/P/sauce_0.jpg'),
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
                const NombreSauseBlancoPage(text: ''),
                DescripcionSauseBlancoPage(context: context),
                HabitatSauseBlancoPage(context: context),
                EmplearSauseBlancoPage(context: context),
              ],
            ),
          ),
        ),
      );
}
