import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_C/Plantas/Cipr%C3%A9s_Com%C3%BAn/descripcion_cipres.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_C/Plantas/Cipr%C3%A9s_Com%C3%BAn/habitat_cipres.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_C/Plantas/Cipr%C3%A9s_Com%C3%BAn/modo_empleo_cipres.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_C/Plantas/Cipr%C3%A9s_Com%C3%BAn/nombre_comun_cipres.dart';
import 'package:flutter/material.dart';

class CipresComunScreen extends StatefulWidget {
  const CipresComunScreen({Key? key}) : super(key: key);

  @override
  State<CipresComunScreen> createState() => _CipresComunScreenState();
}

class _CipresComunScreenState extends State<CipresComunScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Ciprés Común',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('lib/assets/C/Cipres_Comun/cipres_0.jpg'),
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
                const NombreComunCipresPage(text: ''),
                DescripcionCipresPage(context: context),
                HabitatCipresPage(context: context),
                EmplearCipresPage(context: context),
              ],
            ),
          ),
        ),
      );
}
