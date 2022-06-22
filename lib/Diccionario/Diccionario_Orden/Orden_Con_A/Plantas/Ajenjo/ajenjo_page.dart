import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_A/Plantas/Ajenjo/descripcion_ajenjo.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_A/Plantas/Ajenjo/habitat_ajenjo.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_A/Plantas/Ajenjo/modo_empleo_ajenjo.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_A/Plantas/Ajenjo/nombre_comun_ajenjo.dart';
import 'package:flutter/material.dart';

class AjenjoScreen extends StatefulWidget {
  const AjenjoScreen({Key? key}) : super(key: key);

  @override
  State<AjenjoScreen> createState() => _AjenjoScreenState();
}

class _AjenjoScreenState extends State<AjenjoScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Ajenjo',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('lib/assets/ajenjo/ajenjo_0.jpg'),
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
                const NombreComunAjenjoPage(text: ''),
                DescripcionAjenjoPage(context: context),
                HabitatAjenjoPage(context: context),
                EmplearAjenjoPage(context: context),
              ],
            ),
          ),
        ),
      );
}
