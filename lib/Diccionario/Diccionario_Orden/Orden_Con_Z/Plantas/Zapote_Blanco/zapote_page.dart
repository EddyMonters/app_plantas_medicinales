import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_Z/Plantas/Zapote_Blanco/descripcion_zapote.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_Z/Plantas/Zapote_Blanco/habitat_zapote.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_Z/Plantas/Zapote_Blanco/modo_empleo_zapote.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_Z/Plantas/Zapote_Blanco/nombre_zapote.dart';
import 'package:flutter/material.dart';

class ZapoteScreen extends StatefulWidget {
  const ZapoteScreen({Key? key}) : super(key: key);

  @override
  State<ZapoteScreen> createState() => _ZapoteScreenState();
}

class _ZapoteScreenState extends State<ZapoteScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Zapote Blanco',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('lib/assets/T/zapote_0.jpg'),
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
                const NombreZapotePage(text: ''),
                DescripcionZapotePage(context: context),
                HabitatZapotePage(context: context),
                EmplearZapotePage(context: context),
              ],
            ),
          ),
        ),
      );
}
