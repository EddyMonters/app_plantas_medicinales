import 'package:flutter/material.dart' show IconData, Widget;

class MenuOption {
  final String route; //route es el nombre de la ruta donde quisieramos ir
  final IconData icon; // icon los iconos se mostraran en la lista
  final String
      name; // name es el nombre que quisieramos que se muestre en la lista
  final Widget screen; //screen es la parte de la pagina que quisieramos ver

  MenuOption(
      {required this.route,
      required this.icon,
      required this.name,
      required this.screen});
}
