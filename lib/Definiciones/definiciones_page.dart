// ignore_for_file: file_names, unused_local_variable
import 'package:flutter/material.dart';
import 'package:app_plantas_medicinales/Definiciones/router/app_routes.dart';

class DefinicionesPage extends StatelessWidget {
  const DefinicionesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Definiciones', style: TextStyle(fontSize: 30)),
          elevation: 0,
          backgroundColor: Colors.green,
          // centerTitle: true,
          flexibleSpace: const FlexibleSpaceBar(
            background: Image(
              image: AssetImage('lib/assets/Definiciones.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          //actions: [
          //IconButton(
          //icon: const Icon(Icons.search),
          //onPressed: () {},
          //),
          // ],
        ),
        body: ListView.separated(
            physics:
                const BouncingScrollPhysics(), //para hacer scroll estilo iOS
            itemBuilder: (context, index) => ListTile(
                  title: Text(
                    AppRoutes.menuOptions[index].name,
                    style: const TextStyle(fontSize: 20),
                  ),
                  leading: Icon(AppRoutes.menuOptions[index].icon,
                      color: Colors.indigoAccent),
                  //  trailing: const Icon(Icons.arrow_forward_ios_outlined,
                  //    color: Colors.green),
                  onTap: () {
                    Navigator.pushNamed(
                        context, AppRoutes.menuOptions[index].route);

                    //para navegar a una nueva ruta
                    // final route =
                    //   MaterialPageRoute(builder: (context) => const InfusionPage());
                    //Navigator.push(context, route);
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: AppRoutes.menuOptions.length));
  }
}
