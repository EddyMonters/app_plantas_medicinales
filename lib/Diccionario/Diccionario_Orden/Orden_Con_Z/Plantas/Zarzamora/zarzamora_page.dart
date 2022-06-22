import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_Z/Plantas/Zarzamora/descripcion_zarzamora.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_Z/Plantas/Zarzamora/habitat_zarzamora.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_Z/Plantas/Zarzamora/modo_empleo_zarzamora.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_Z/Plantas/Zarzamora/nombre_zarzamora.dart';
import 'package:flutter/material.dart';

class ZarzamoraScreen extends StatefulWidget {
  const ZarzamoraScreen({Key? key}) : super(key: key);

  @override
  State<ZarzamoraScreen> createState() => _ZarzamoraScreenState();
}

class _ZarzamoraScreenState extends State<ZarzamoraScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Zarzamora',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('lib/assets/T/zarzamora_0.jpg'),
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
                const NombreZarzamoraPage(text: ''),
                DescripcionZarzamoraPage(context: context),
                HabitatZarzamoraPage(context: context),
                EmplearZarzamoraPage(context: context),
              ],
            ),
          ),
        ),
      );
}
