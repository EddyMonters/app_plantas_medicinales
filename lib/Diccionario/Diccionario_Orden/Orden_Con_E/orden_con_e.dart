import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_E/diccionario_orden_e.dart';
import 'package:flutter/material.dart';

class OrdenConE extends StatelessWidget {
  const OrdenConE({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.red,
      elevation: 25,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Ink.image(
            image: const AssetImage('lib/assets/D/Epazote_0.jpg'),
            fit: BoxFit.cover,
            height: 150,
            child: InkWell(
              onTap: () {
                final route = MaterialPageRoute(
                    builder: (context) => const DiccionarioOrdenE());
                Navigator.push(context, route);
              },
            ),
          ),
          const Text(
            'Plantas con la inicial E',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 28,
            ),
          ),
        ],
      ),
    );
  }
}
