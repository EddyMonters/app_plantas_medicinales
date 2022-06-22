import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_Z/Plantas/Zacate_Lim%C3%B3n/descripcion_zacate.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_Z/Plantas/Zacate_Lim%C3%B3n/habitat_zacate.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_Z/Plantas/Zacate_Lim%C3%B3n/modo_empleo_zacate.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_Z/Plantas/Zacate_Lim%C3%B3n/nombre_zacate.dart';
import 'package:flutter/material.dart';

class ZacateLimonScreen extends StatefulWidget {
  const ZacateLimonScreen({Key? key}) : super(key: key);

  @override
  State<ZacateLimonScreen> createState() => _ZacateLimonScreenState();
}

class _ZacateLimonScreenState extends State<ZacateLimonScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Zacate Limón',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('lib/assets/T/zacate_0.jpg'),
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
                const NombreZacateLimonPage(text: ''),
                DescripcionZacateLimonPage(context: context),
                HabitatZacateLimonPage(context: context),
                EmplearZacateLimonPage(context: context),
              ],
            ),
          ),
        ),
      );
}
