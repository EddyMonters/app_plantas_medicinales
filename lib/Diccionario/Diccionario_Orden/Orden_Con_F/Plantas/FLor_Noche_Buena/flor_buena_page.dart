import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_F/Plantas/FLor_Noche_Buena/descripcion_noche.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_F/Plantas/FLor_Noche_Buena/habitat_noche.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_F/Plantas/FLor_Noche_Buena/modo_noche.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_F/Plantas/FLor_Noche_Buena/nombre_comun_noche.dart';
import 'package:flutter/material.dart';

class FlorNocheScreen extends StatefulWidget {
  const FlorNocheScreen({Key? key}) : super(key: key);

  @override
  State<FlorNocheScreen> createState() => _FlorNocheScreenState();
}

class _FlorNocheScreenState extends State<FlorNocheScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Flor de Noche Buena',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('lib/assets/F/Flor_0.jpg'),
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
                const NombreFlorNocheBuenaPage(text: ''),
                DescripcionFlorNocheBuenaPage(context: context),
                HabitatFlorNocheBuenaPage(context: context),
                EmplearFlorNocheBuenaPage(context: context),
              ],
            ),
          ),
        ),
      );
}
