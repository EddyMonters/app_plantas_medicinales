import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_C/Plantas/Cardo_Santo/descripcion_cardo_santo.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_C/Plantas/Cardo_Santo/habitat_cardo_santo.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_C/Plantas/Cardo_Santo/modo_empleo_cardo_santo.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_C/Plantas/Cardo_Santo/nombre_comun_cardo_santo.dart';
import 'package:flutter/material.dart';

class CardoSantoScreen extends StatefulWidget {
  const CardoSantoScreen({Key? key}) : super(key: key);

  @override
  State<CardoSantoScreen> createState() => _CardoSantoScreenState();
}

class _CardoSantoScreenState extends State<CardoSantoScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Cardo Santo',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image:
                      AssetImage('lib/assets/C/Cardo_Santo/cardo_santo_0.jpg'),
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
                const NombreComunCardoSantoPage(text: ''),
                DescripcionCardoSantoPage(context: context),
                HabitatCardoSantoPage(context: context),
                EmplearCardoSantoPage(context: context),
              ],
            ),
          ),
        ),
      );
}
