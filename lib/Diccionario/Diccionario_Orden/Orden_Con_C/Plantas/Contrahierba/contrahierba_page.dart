import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_C/Plantas/Contrahierba/descripcion_contrahierba.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_C/Plantas/Contrahierba/habitat_contrahierba.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_C/Plantas/Contrahierba/modo_empleo_contrahierba.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_C/Plantas/Contrahierba/nombre_comun_contrahierba.dart';
import 'package:flutter/material.dart';

class ContrahierbaScreen extends StatefulWidget {
  const ContrahierbaScreen({Key? key}) : super(key: key);

  @override
  State<ContrahierbaScreen> createState() => _ContrahierbaScreenState();
}

class _ContrahierbaScreenState extends State<ContrahierbaScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Contrahierba',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: AssetImage(
                      'lib/assets/C/Contrahierba/contrahierba_0.jpg'),
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
                const NombreContrahierbaPage(text: ''),
                DescripcionContrahierbaPage(context: context),
                HabitatContrahierbaPage(context: context),
                EmplearContrahierbaPage(context: context),
              ],
            ),
          ),
        ),
      );
}
