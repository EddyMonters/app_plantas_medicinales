import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_G/Plantas/Ginko/descripcion_ginko.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_G/Plantas/Ginko/habitat_ginko.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_G/Plantas/Ginko/modo_empleo_ginko.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_G/Plantas/Ginko/nombre_comun_ginko.dart';
import 'package:flutter/material.dart';

class GinkoScreen extends StatefulWidget {
  const GinkoScreen({Key? key}) : super(key: key);

  @override
  State<GinkoScreen> createState() => _GinkoScreenState();
}

class _GinkoScreenState extends State<GinkoScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Ginko',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('lib/assets/G/ginko_0.jpg'),
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
                const NombreGinkoPage(text: ''),
                DescripcionGinkoPage(context: context),
                HabitatGinkoPage(context: context),
                EmplearGinkoPage(context: context),
              ],
            ),
          ),
        ),
      );
}
