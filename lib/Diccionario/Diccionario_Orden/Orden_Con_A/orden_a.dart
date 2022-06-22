import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_A/diccionario_orden_a.dart';
import 'package:flutter/material.dart';

class OrdenConA extends StatelessWidget {
  const OrdenConA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.amber,
      elevation: 25,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Ink.image(
            image: const AssetImage('lib/assets/Arnicaa.jpg'),
            fit: BoxFit.cover,
            height: 150,
            child: InkWell(
              onTap: () {
                final route = MaterialPageRoute(
                    builder: (context) => const DiccionarioOrdenA());
                Navigator.push(context, route);
              },
            ),
          ),
          const Text(
            'Plantas con la inicial A',
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
