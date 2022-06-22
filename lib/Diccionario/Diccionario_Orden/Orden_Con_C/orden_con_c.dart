import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_C/diccionario_orden_c.dart';
import 'package:flutter/material.dart';

class OrdenConC extends StatelessWidget {
  const OrdenConC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.brown,
      elevation: 25,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Ink.image(
            image: const AssetImage('lib/assets/Cebolla.jpg'),
            fit: BoxFit.cover,
            height: 150,
            child: InkWell(
              onTap: () {
                final route = MaterialPageRoute(
                    builder: (context) => const DiccionarioOrdenC());
                Navigator.push(context, route);
              },
            ),
          ),
          const Text(
            'Plantas con la inicial C',
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
