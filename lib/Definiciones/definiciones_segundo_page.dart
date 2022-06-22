import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

//import 'package:app_plantas_medicinales/Tratamientos/search/search_delegate.dart';

import 'package:app_plantas_medicinales/screens/screens.dart';

class DefinicionesSegundoPage extends StatelessWidget {
  const DefinicionesSegundoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Definiciones', style: TextStyle(fontSize: 32)),
        elevation: 0,
        backgroundColor: Colors.green,
        //actions: [
        // IconButton(
        // icon: const Icon(Icons.search_outlined),
        //onPressed: () =>
        //   showSearch(context: context, delegate: TratamientosDelegate()),
        //),
        // ],
        flexibleSpace: const FlexibleSpaceBar(
          background: Image(
            image: AssetImage('lib/assets/Tratamientos.jpg'),
            fit: BoxFit.cover,
          ),
        ),

        //shadowColor: Colors.green,
      ),
      body: FadeInUp(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: <Widget>[
            ListTile(
                onTap: () {
                  final route = MaterialPageRoute(
                      builder: (context) => const InfusionPage());
                  Navigator.push(context, route);
                },
                title: const Text(
                  'Infusión (para plantas arómaticas)',
                  style: TextStyle(fontSize: 20),
                ),
                leading: const CircleAvatar(
                  radius: 21,
                  backgroundImage:
                      AssetImage('lib/assets/tratamientosimg/infusion_0.jpg'),
                )
                //leading: const Icon(Icons.face, color: Colors.indigoAccent),
                ),
            const Divider(),
            ListTile(
                onTap: () {
                  final route = MaterialPageRoute(
                      builder: (context) => const CocimientoPage());
                  Navigator.push(context, route);
                },
                title: const Text(
                  'Cocimiento',
                  style: TextStyle(fontSize: 20),
                ),
                leading: const CircleAvatar(
                  radius: 21,
                  backgroundImage:
                      AssetImage('lib/assets/tratamientosimg/cocimiento_1.jpg'),
                )),
            const Divider(),
            ListTile(
                onTap: () {
                  final route = MaterialPageRoute(
                      builder: (context) => const MaceracionPage());
                  Navigator.push(context, route);
                },
                title: const Text(
                  'Maceración (partes vegetales sensibles al calor)',
                  style: TextStyle(fontSize: 20),
                ),
                leading: const CircleAvatar(
                  radius: 21,
                  backgroundImage:
                      AssetImage('lib/assets/tratamientosimg/cocimiento_3.jpg'),
                )),
            const Divider(),
            ListTile(
                onTap: () {
                  final route = MaterialPageRoute(
                      builder: (context) => const CompresasPage());
                  Navigator.push(context, route);
                },
                title: const Text(
                  'Compresas o fomento',
                  style: TextStyle(fontSize: 20),
                ),
                leading: const CircleAvatar(
                  radius: 21,
                  backgroundImage:
                      AssetImage('lib/assets/tratamientosimg/compresas_0.jpg'),
                )),
            const Divider(),
            ListTile(
                onTap: () {
                  final route = MaterialPageRoute(
                      builder: (context) => const CataplasmaPage());
                  Navigator.push(context, route);
                },
                title: const Text(
                  'Cataplasma o emplasto',
                  style: TextStyle(fontSize: 20),
                ),
                leading: const CircleAvatar(
                  radius: 21,
                  backgroundImage:
                      AssetImage('lib/assets/tratamientosimg/cataplasma_1.jpg'),
                )),
            const Divider(),
            ListTile(
                onTap: () {
                  final route =
                      MaterialPageRoute(builder: (context) => const BanoPage());
                  Navigator.push(context, route);
                },
                title: const Text(
                  'Baño',
                  style: TextStyle(fontSize: 20),
                ),
                leading: const CircleAvatar(
                  radius: 21,
                  backgroundImage:
                      AssetImage('lib/assets/tratamientosimg/bano_0.jpg'),
                )),
            const Divider(),
            ListTile(
                onTap: () {
                  final route = MaterialPageRoute(
                      builder: (context) => const GargarismoPage());
                  Navigator.push(context, route);
                },
                title: const Text(
                  'Gargarismo',
                  style: TextStyle(fontSize: 20),
                ),
                leading: const CircleAvatar(
                  radius: 21,
                  backgroundImage:
                      AssetImage('lib/assets/angina/angina_dos.jpg'),
                )),
            const Divider(),
            ListTile(
                onTap: () {
                  final route = MaterialPageRoute(
                      builder: (context) => const ExtractoPage());
                  Navigator.push(context, route);
                },
                title: const Text(
                  'Extracto hidroalcohólico',
                  style: TextStyle(fontSize: 20),
                ),
                leading: const CircleAvatar(
                  radius: 21,
                  backgroundImage:
                      AssetImage('lib/assets/tratamientosimg/extracto_3.jpg'),
                )),
            const Divider(),
            ListTile(
                onTap: () {
                  final route = MaterialPageRoute(
                      builder: (context) => const TinturaPage());
                  Navigator.push(context, route);
                },
                title: const Text(
                  'Tintura',
                  style: TextStyle(fontSize: 20),
                ),
                leading: const CircleAvatar(
                  radius: 21,
                  backgroundImage:
                      AssetImage('lib/assets/tratamientosimg/tintura_0.jpg'),
                )),
            const Divider(),
            ListTile(
                onTap: () {
                  final route = MaterialPageRoute(
                      builder: (context) => const JarabePage());
                  Navigator.push(context, route);
                },
                title: const Text(
                  'Jarabe',
                  style: TextStyle(fontSize: 20),
                ),
                leading: const CircleAvatar(
                  radius: 21,
                  backgroundImage:
                      AssetImage('lib/assets/tratamientosimg/jarabe_0.jpg'),
                )),
            const Divider(),
            ListTile(
                onTap: () {
                  final route = MaterialPageRoute(
                      builder: (context) => const PomadaPage());
                  Navigator.push(context, route);
                },
                title: const Text(
                  'Pomada',
                  style: TextStyle(fontSize: 20),
                ),
                leading: const CircleAvatar(
                  radius: 21,
                  backgroundImage:
                      AssetImage('lib/assets/tratamientosimg/pomada_0.jpg'),
                )),
            const Divider(),
            ListTile(
                onTap: () {
                  final route = MaterialPageRoute(
                      builder: (context) => const LavativaPage());
                  Navigator.push(context, route);
                },
                title: const Text(
                  'Lavativa',
                  style: TextStyle(fontSize: 20),
                ),
                leading: const CircleAvatar(
                  radius: 21,
                  backgroundImage: AssetImage(
                      'lib/assets/tratamientosimg/estrinimiento_1.jpg'),
                )),
            const Divider(),
            ListTile(
                onTap: () {
                  final route = MaterialPageRoute(
                      builder: (context) => const PolvoPage());
                  Navigator.push(context, route);
                },
                title: const Text(
                  'Polvo',
                  style: TextStyle(fontSize: 20),
                ),
                leading: const CircleAvatar(
                  radius: 21,
                  backgroundImage: AssetImage(
                      'lib/assets/tratamientosimg/convulsion_uno.jpg'),
                )),
            const Divider(),
            ListTile(
                onTap: () {
                  final route = MaterialPageRoute(
                      builder: (context) => const MicrodosisPage());
                  Navigator.push(context, route);
                },
                title: const Text(
                  'Microdosis',
                  style: TextStyle(fontSize: 20),
                ),
                leading: const CircleAvatar(
                  radius: 21,
                  backgroundImage:
                      AssetImage('lib/assets/tratamientosimg/microdosis_1.jpg'),
                )),
            const Divider(),
            ListTile(
                onTap: () {
                  final route = MaterialPageRoute(
                      builder: (context) => const TopicoPage());
                  Navigator.push(context, route);
                },
                title: const Text(
                  'Tópico',
                  style: TextStyle(fontSize: 20),
                ),
                leading: const CircleAvatar(
                  radius: 21,
                  backgroundImage:
                      AssetImage('lib/assets/tratamientosimg/infusion_3.jpg'),
                )),
          ],
        ),
      ),
      //para hacer scroll estilo iOS

      // separatorBuilder: (_, __) => const Divider(),
      // itemCount: AppRoutes2.menuOptionss.length)
    );
  }
}
