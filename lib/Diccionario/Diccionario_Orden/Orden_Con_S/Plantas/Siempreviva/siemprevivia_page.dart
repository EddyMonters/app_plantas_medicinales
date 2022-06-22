import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_S/Plantas/Siempreviva/descripcion_siempreviva.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_S/Plantas/Siempreviva/habitat_siempreviva.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_S/Plantas/Siempreviva/modo_empleo_siempreviva.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_S/Plantas/Siempreviva/nombre_siempreviva.dart';
import 'package:flutter/material.dart';

class SiemprevivaScreen extends StatefulWidget {
  const SiemprevivaScreen({Key? key}) : super(key: key);

  @override
  State<SiemprevivaScreen> createState() => _SiemprevivaScreenState();
}

class _SiemprevivaScreenState extends State<SiemprevivaScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Siempreviva',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('lib/assets/P/siempre_0.jpg'),
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
                const NombreSiemprevivaPage(text: ''),
                DescripcionSiemprevivaPage(context: context),
                HabitatSiemprevivaPage(context: context),
                EmplearSiemprevivaPage(context: context),
              ],
            ),
          ),
        ),
      );
}
