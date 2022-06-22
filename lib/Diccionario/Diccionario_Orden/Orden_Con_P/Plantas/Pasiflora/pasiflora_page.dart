import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_P/Plantas/Pasiflora/descripcion_pasiflora.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_P/Plantas/Pasiflora/habitat_pasiflora.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_P/Plantas/Pasiflora/modo_empleo_pasiflora.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_P/Plantas/Pasiflora/nombre_pasiflora.dart';
import 'package:flutter/material.dart';

class PasifloraScreen extends StatefulWidget {
  const PasifloraScreen({Key? key}) : super(key: key);

  @override
  State<PasifloraScreen> createState() => _PasifloraScreenState();
}

class _PasifloraScreenState extends State<PasifloraScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Pasiflora',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('lib/assets/P/pasiflora_0.jpg'),
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
                const NombrePasifloraPage(text: ''),
                DescripcionPasifloraPage(context: context),
                HabitatPasifloraPage(context: context),
                EmplearPasifloraPage(context: context),
              ],
            ),
          ),
        ),
      );
}
