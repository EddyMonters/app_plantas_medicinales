import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_J/diccionario_orden_j.dart';
import 'package:flutter/material.dart';

class OrdenConJ extends StatelessWidget {
  const OrdenConJ({Key? key}) : super(key: key);

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
            image: const AssetImage('lib/assets/H/jacaranda_0.jpg'),
            fit: BoxFit.cover,
            height: 150,
            child: InkWell(
              onTap: () {
                final route = MaterialPageRoute(
                    builder: (context) => const DiccionarioOrdenJ());
                Navigator.push(context, route);
              },
            ),
          ),
          const Text(
            'Plantas con la inicial J',
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
