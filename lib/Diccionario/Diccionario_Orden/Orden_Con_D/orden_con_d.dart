import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_D/diccionario_orden_d.dart';
import 'package:flutter/material.dart';

class OrdenConD extends StatelessWidget {
  const OrdenConD({Key? key}) : super(key: key);

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
            image: const AssetImage('lib/assets/D/Diente_Leon_0.jpg'),
            fit: BoxFit.cover,
            height: 150,
            child: InkWell(
              onTap: () {
                final route = MaterialPageRoute(
                    builder: (context) => const DiccionarioOrdenD());
                Navigator.push(context, route);
              },
            ),
          ),
          const Text(
            'Plantas con la inicial D',
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
