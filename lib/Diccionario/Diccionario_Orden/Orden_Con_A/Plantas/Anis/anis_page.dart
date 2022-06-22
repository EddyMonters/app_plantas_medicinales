import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_A/Plantas/Anis/descripcion_anis.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_A/Plantas/Anis/habitat_anis.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_A/Plantas/Anis/modo_empleo_anis.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_A/Plantas/Anis/nombre_comun_anis.dart';
import 'package:flutter/material.dart';

class AnisScreen extends StatefulWidget {
  const AnisScreen({Key? key}) : super(key: key);

  @override
  State<AnisScreen> createState() => _AnisScreenState();
}

class _AnisScreenState extends State<AnisScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Anís',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('lib/assets/anis/anis_1.jpg'),
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
                const NombreComunAnisPage(text: ''),
                DescripcionAnisPage(context: context),
                HabitatAnisPage(context: context),
                EmplearAnisPage(context: context),
              ],
            ),
          ),
        ),
      );
}
