import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_A/Plantas/Arnica/descripcion_arnica.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_A/Plantas/Arnica/emplear_page.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_A/Plantas/Arnica/habitad_arnica.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_A/Plantas/Arnica/nombre_comun_arnica.dart';
import 'package:flutter/material.dart';

class ArnicaScreen extends StatefulWidget {
  const ArnicaScreen({Key? key}) : super(key: key);

  @override
  State<ArnicaScreen> createState() => _ArnicaScreenState();
}

class _ArnicaScreenState extends State<ArnicaScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Árnica',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('lib/assets/Aarnica.png'),
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
                  Tab(icon: Icon(Icons.next_week), text: 'Empleo'),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                const NombreComunPage(text: ''),
                DescripcionBotanicaPage(context: context),
                HabitadPage(context: context),
                EmplearPage(context: context),
              ],
            ),
          ),
        ),
      );
}
