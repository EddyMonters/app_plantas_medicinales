import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_H/Plantas/Hoja_santa/descripcion_santa.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_H/Plantas/Hoja_santa/habitat_santa.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_H/Plantas/Hoja_santa/modo_empleo_santa.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_H/Plantas/Hoja_santa/nombre_santa.dart';
import 'package:flutter/material.dart';

class HojaSantaScreen extends StatefulWidget {
  const HojaSantaScreen({Key? key}) : super(key: key);

  @override
  State<HojaSantaScreen> createState() => _HojaSantaScreenState();
}

class _HojaSantaScreenState extends State<HojaSantaScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'HojaSanta',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('lib/assets/H/santa_0.jpg'),
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
                const NombreHojaSantaPage(text: ''),
                DescripcionHojaSantaPage(context: context),
                HabitatHojaSantaPage(context: context),
                EmplearHojaSantaPage(context: context),
              ],
            ),
          ),
        ),
      );
}
