import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_C/Plantas/Chaya/descripcion_chaya.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_C/Plantas/Chaya/habitat_chaya.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_C/Plantas/Chaya/modo_empleo_chaya.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_C/Plantas/Chaya/nombre_comun_chaya.dart';
import 'package:flutter/material.dart';

class ChayaScreen extends StatefulWidget {
  const ChayaScreen({Key? key}) : super(key: key);

  @override
  State<ChayaScreen> createState() => _ChayaScreenState();
}

class _ChayaScreenState extends State<ChayaScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Chaya',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('lib/assets/C/Chaya/chaya1.jpg'),
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
                const NombreComunChayaPage(text: ''),
                DescripcionChayaPage(context: context),
                HabitatChayaPage(context: context),
                EmplearChayaPage(context: context),
              ],
            ),
          ),
        ),
      );
}
