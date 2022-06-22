// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class TratamientosDelegate extends SearchDelegate {
  @override
  String get searchFieldLabel => 'Buscar tratamiento';

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(
            Icons.clear), // agregar el icono de eliminar datos de busqueda
        onPressed: () {
          query = ''; // devolvera un String vacio
        },
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back_ios_new),
      onPressed: () {
        close(context, null); //para regresar
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return const Text('Hola buildResults');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.isEmpty) {
      return Container(
        child: const Center(
          child: Icon(
            Icons.medical_services,
            color: Colors.black26,
            size: 150,
          ),
        ),
      );
    }
    return Container();
  }
}
