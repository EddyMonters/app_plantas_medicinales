import 'package:flutter/material.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_con_B/diccionario_orden_b.dart';

class OrdenConB extends StatelessWidget {
  const OrdenConB({Key? key}) : super(key: key);

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
            image: const AssetImage('lib/assets/bugambilia.jpg'),
            fit: BoxFit.cover,
            height: 150,
            child: InkWell(
              onTap: () {
                final route = MaterialPageRoute(
                    builder: (context) => const DiccionarioOrdenB());
                Navigator.push(context, route);
              },
            ),
          ),
          const Text(
            'Plantas con la inicial B',
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
