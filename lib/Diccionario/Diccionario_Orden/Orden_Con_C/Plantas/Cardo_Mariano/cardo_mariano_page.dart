import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_C/Plantas/Cardo_Mariano/descripcion_cardo_mariano.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_C/Plantas/Cardo_Mariano/habitat_cardo_mariano.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_C/Plantas/Cardo_Mariano/modo_empleo_cardo_mariano.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_C/Plantas/Cardo_Mariano/nombre_comun_cardo_mariano.dart';
import 'package:flutter/material.dart';

class CardoMarianoScreen extends StatefulWidget {
  const CardoMarianoScreen({Key? key}) : super(key: key);

  @override
  State<CardoMarianoScreen> createState() => _CardoMarianoScreenState();
}

class _CardoMarianoScreenState extends State<CardoMarianoScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Cardo Mariano',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('lib/assets/C/Cardo_Mariano/cardo_1.jpg'),
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
                const NombreComunCardoMarianoPage(text: ''),
                DescripcionCardoMarianoPage(context: context),
                HabitatCardoMarianoPage(context: context),
                EmplearCardoMarianoPage(context: context),
              ],
            ),
          ),
        ),
      );
}
