import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_F/Plantas/Fresno/descripcion_fresno.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_F/Plantas/Fresno/habitat_fresno.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_F/Plantas/Fresno/modo_empleo_fresno.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_F/Plantas/Fresno/nombre_comun_fresno.dart';
import 'package:flutter/material.dart';

class FresnoScreen extends StatefulWidget {
  const FresnoScreen({Key? key}) : super(key: key);

  @override
  State<FresnoScreen> createState() => _FresnoScreenState();
}

class _FresnoScreenState extends State<FresnoScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Fresno',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('lib/assets/F/Fresno_0.jpg'),
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
                const NombreFresnoPage(text: ''),
                DescripcionFresnoPage(context: context),
                HabitatFresnoPage(context: context),
                EmplearFresnoPage(context: context),
              ],
            ),
          ),
        ),
      );
}
