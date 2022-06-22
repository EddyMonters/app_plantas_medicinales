// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class BotonAcercaDe extends StatelessWidget {
  //const BotonAcercaDe({Key? key}) : super(key: key);

  final IconData icon;
  @required
  final String texto;
  final Color color1;
  final Color color2;
  @required
  final void Function()? onPress;

  const BotonAcercaDe(
      {this.icon = Icons.perm_contact_calendar_rounded,
      required this.texto,
      this.color1 = Colors.green,
      this.color2 = Colors.yellow,
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Stack(
        children: [
          _BotonAcercaDe(icon, color1, color2),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 140,
                width: 40,
              ),
              Icon(
                icon,
                color: Colors.white,
                size: 40,
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: Text(
                  texto,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
              const Icon(Icons.arrow_forward_ios, color: Colors.white),
              const SizedBox(
                width: 40,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _BotonAcercaDe extends StatelessWidget {
  //const _BotonAcercaDe({Key? key}) : super(key: key);

  final IconData icon;
  final Color color1;
  final Color color2;

  const _BotonAcercaDe(
    this.icon,
    this.color1,
    this.color2,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          children: [
            Positioned(
              right: -20,
              top: -5,
              child:
                  Icon(icon, size: 150, color: Colors.white.withOpacity(0.2)),
            )
          ],
        ),
      ),
      width: double.infinity,
      height: 100,
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        //color: Colors.green,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            offset: const Offset(4, 6),
            blurRadius: 10,
          ),
        ],
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          colors: <Color>[
            color1,
            color2,
          ],
        ),
      ),
    );
  }
}
