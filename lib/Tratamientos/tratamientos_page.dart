import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

//import 'package:app_plantas_medicinales/Tratamientos/search/search_delegate.dart';

import 'package:app_plantas_medicinales/screens/screens.dart';

class TratamientosPage extends StatelessWidget {
  const TratamientosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Padecimientos y Tratamientos',
            style: TextStyle(fontSize: 16)),
        elevation: 0,
        backgroundColor: Colors.green,
        //  actions: [
        //  IconButton(
        //  icon: const Icon(Icons.search_outlined),
        // onPressed: () =>
        //   showSearch(context: context, delegate: TratamientosDelegate()),
        // ),
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
              title: Text('Sección A',
                  style: TextStyle(
                    color: Colors.green.shade800,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center),
            ),
            const Divider(),
            ListTile(
              onTap: () {
                final route =
                    MaterialPageRoute(builder: (context) => const AcneScreen());
                Navigator.push(context, route);
              },
              title: const Text(
                'Acné',
                style: TextStyle(fontSize: 20),
              ),
              leading: const Icon(Icons.face, color: Colors.indigoAccent),
              trailing: const Icon(Icons.arrow_forward_ios,
                  color: Colors.indigoAccent),
            ),
            const Divider(),
            ListTile(
              onTap: () {
                final route = MaterialPageRoute(
                    builder: (context) => const AbscesoScreen());
                Navigator.push(context, route);
              },
              title: const Text(
                'Absceso',
                style: TextStyle(fontSize: 20),
              ),
              leading: const Icon(Icons.settings_input_svideo_rounded,
                  color: Colors.indigoAccent),
              trailing: const Icon(Icons.arrow_forward_ios,
                  color: Colors.indigoAccent),
            ),
            const Divider(),
            ListTile(
              onTap: () {
                final route = MaterialPageRoute(
                    builder: (context) => const AfonicoScreen());
                Navigator.push(context, route);
              },
              title: const Text(
                'Afónico',
                style: TextStyle(fontSize: 20),
              ),
              leading: const Icon(Icons.volume_off, color: Colors.indigoAccent),
              trailing: const Icon(Icons.arrow_forward_ios,
                  color: Colors.indigoAccent),
            ),
            const Divider(),
            ListTile(
              onTap: () {
                final route = MaterialPageRoute(
                    builder: (context) => const AlimentacionScreen());
                Navigator.push(context, route);
              },
              title: const Text(
                'Alimentación',
                style: TextStyle(fontSize: 20),
              ),
              leading:
                  const Icon(Icons.dinner_dining, color: Colors.indigoAccent),
              trailing: const Icon(Icons.arrow_forward_ios,
                  color: Colors.indigoAccent),
            ),
            const Divider(),
            ListTile(
              onTap: () {
                final route = MaterialPageRoute(
                    builder: (context) => const AnemiaScreen());
                Navigator.push(context, route);
              },
              title: const Text(
                'Anemia',
                style: TextStyle(fontSize: 20),
              ),
              leading: const Icon(Icons.bloodtype, color: Colors.indigoAccent),
              trailing: const Icon(Icons.arrow_forward_ios,
                  color: Colors.indigoAccent),
            ),
            const Divider(),
            ListTile(
              onTap: () {
                final route = MaterialPageRoute(
                    builder: (context) => const AnginaScreen());
                Navigator.push(context, route);
              },
              title: const Text(
                'Angina',
                style: TextStyle(fontSize: 20),
              ),
              leading: const Icon(Icons.accessibility_new_outlined,
                  color: Colors.indigoAccent),
              trailing: const Icon(Icons.arrow_forward_ios,
                  color: Colors.indigoAccent),
            ),
            const Divider(),
            ListTile(
              onTap: () {
                final route = MaterialPageRoute(
                    builder: (context) => const ArtrosisScreen());
                Navigator.push(context, route);
              },
              title: const Text(
                'Artrosis (dolor de las articulaciones)',
                style: TextStyle(fontSize: 20),
              ),
              leading: const Icon(Icons.elderly, color: Colors.indigoAccent),
              trailing: const Icon(Icons.arrow_forward_ios,
                  color: Colors.indigoAccent),
            ),
            const Divider(),
            ListTile(
              onTap: () {
                final route =
                    MaterialPageRoute(builder: (context) => const AsmaScreen());
                Navigator.push(context, route);
              },
              title: const Text(
                'Asma',
                style: TextStyle(fontSize: 20),
              ),
              leading: const Icon(Icons.air, color: Colors.indigoAccent),
              trailing: const Icon(Icons.arrow_forward_ios,
                  color: Colors.indigoAccent),
            ),
            const Divider(),
            ListTile(
              title: Text(
                'Sección B',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.green.shade800,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Divider(),
            ListTile(
              onTap: () {
                final route = MaterialPageRoute(
                    builder: (context) => const BilisScreen());
                Navigator.push(context, route);
              },
              title: const Text(
                'Bilis',
                style: TextStyle(fontSize: 20),
              ),
              leading: const Icon(Icons.self_improvement,
                  color: Colors.indigoAccent),
              trailing: const Icon(Icons.arrow_forward_ios,
                  color: Colors.indigoAccent),
            ),
            const Divider(),
            ListTile(
              onTap: () {
                final route = MaterialPageRoute(
                    builder: (context) => const BronquitisScreen());
                Navigator.push(context, route);
              },
              title: const Text(
                'Bronquitis',
                style: TextStyle(fontSize: 20),
              ),
              leading:
                  const Icon(Icons.attribution, color: Colors.indigoAccent),
              trailing: const Icon(Icons.arrow_forward_ios,
                  color: Colors.indigoAccent),
            ),
            const Divider(),
            ListTile(
              title: Text(
                'Sección C',
                style: TextStyle(
                  color: Colors.green.shade900,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Divider(),
            ListTile(
              onTap: () {
                final route = MaterialPageRoute(
                    builder: (context) => const CalambresScreen());
                Navigator.push(context, route);
              },
              title: const Text(
                'Calambres',
                style: TextStyle(fontSize: 20),
              ),
              leading: const Icon(Icons.kayaking, color: Colors.indigoAccent),
              trailing: const Icon(Icons.arrow_forward_ios,
                  color: Colors.indigoAccent),
            ),
            const Divider(),
            ListTile(
              onTap: () {
                final route = MaterialPageRoute(
                    builder: (context) => const CefaleaScreen());
                Navigator.push(context, route);
              },
              title: const Text(
                'Cefalea',
                style: TextStyle(fontSize: 20),
              ),
              leading: const Icon(Icons.psychology, color: Colors.indigoAccent),
              trailing: const Icon(Icons.arrow_forward_ios,
                  color: Colors.indigoAccent),
            ),
            const Divider(),
            ListTile(
              onTap: () {
                final route = MaterialPageRoute(
                    builder: (context) => const CirrosisScreen());
                Navigator.push(context, route);
              },
              title: const Text(
                'Cirrosis',
                style: TextStyle(fontSize: 20),
              ),
              leading:
                  const Icon(Icons.nature_people, color: Colors.indigoAccent),
              trailing: const Icon(Icons.arrow_forward_ios,
                  color: Colors.indigoAccent),
            ),
            const Divider(),
            ListTile(
              onTap: () {
                final route = MaterialPageRoute(
                    builder: (context) => const ConjuntivitisScreen());
                Navigator.push(context, route);
              },
              title: const Text(
                'Conjuntivitis',
                style: TextStyle(fontSize: 20),
              ),
              leading: const Icon(Icons.visibility, color: Colors.indigoAccent),
              trailing: const Icon(Icons.arrow_forward_ios,
                  color: Colors.indigoAccent),
            ),
            const Divider(),
            ListTile(
              onTap: () {
                final route = MaterialPageRoute(
                    builder: (context) => const ConvulsionScreen());
                Navigator.push(context, route);
              },
              title: const Text(
                'Convulsión',
                style: TextStyle(fontSize: 20),
              ),
              leading: const Icon(Icons.hotel, color: Colors.indigoAccent),
              trailing: const Icon(Icons.arrow_forward_ios,
                  color: Colors.indigoAccent),
            ),
            const Divider(),
            ListTile(
              title: Text('Sección D',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.green.shade900,
                  ),
                  textAlign: TextAlign.center),
            ),
            const Divider(),
            ListTile(
              onTap: () {
                final route = MaterialPageRoute(
                    builder: (context) => const DiabetesScreen());
                Navigator.push(context, route);
              },
              title: const Text(
                'Diabetes',
                style: TextStyle(fontSize: 20),
              ),
              leading: const Icon(Icons.medication, color: Colors.indigoAccent),
              trailing: const Icon(Icons.arrow_forward_ios,
                  color: Colors.indigoAccent),
            ),
            const Divider(),
            ListTile(
              onTap: () {
                final route = MaterialPageRoute(
                    builder: (context) => const DiarreaScreen());
                Navigator.push(context, route);
              },
              title: const Text(
                'Diarrea, Disenterias',
                style: TextStyle(fontSize: 20),
              ),
              leading: const Icon(Icons.water, color: Colors.indigoAccent),
              trailing: const Icon(Icons.arrow_forward_ios,
                  color: Colors.indigoAccent),
            ),
            const Divider(),
            ListTile(
              onTap: () {
                final route = MaterialPageRoute(
                    builder: (context) => const DolorMuscularScreen());
                Navigator.push(context, route);
              },
              title: const Text(
                'Dólores Musculares',
                style: TextStyle(fontSize: 20),
              ),
              leading:
                  const Icon(Icons.personal_injury, color: Colors.indigoAccent),
              trailing: const Icon(Icons.arrow_forward_ios,
                  color: Colors.indigoAccent),
            ),
            const Divider(),
            ListTile(
              onTap: () {
                final route = MaterialPageRoute(
                    builder: (context) => const DolorCabezaScreen());
                Navigator.push(context, route);
              },
              title: const Text(
                'Dolor de Cabeza',
                style: TextStyle(fontSize: 20),
              ),
              leading: const Icon(Icons.psychology_outlined,
                  color: Colors.indigoAccent),
              trailing: const Icon(Icons.arrow_forward_ios,
                  color: Colors.indigoAccent),
            ),
            const Divider(),
            ListTile(
              onTap: () {
                final route = MaterialPageRoute(
                    builder: (context) => const DolorEspaldaScreen());
                Navigator.push(context, route);
              },
              title: const Text(
                'Dolor de Espalda',
                style: TextStyle(fontSize: 20),
              ),
              leading:
                  const Icon(Icons.directions_walk, color: Colors.indigoAccent),
              trailing: const Icon(Icons.arrow_forward_ios,
                  color: Colors.indigoAccent),
            ),
            const Divider(),
            ListTile(
              onTap: () {
                final route = MaterialPageRoute(
                    builder: (context) => const DolorEstomagoScreen());
                Navigator.push(context, route);
              },
              title: const Text(
                'Dolor de Estomago',
                style: TextStyle(fontSize: 20),
              ),
              leading: const Icon(Icons.sports_kabaddi_outlined,
                  color: Colors.indigoAccent),
              trailing: const Icon(Icons.arrow_forward_ios,
                  color: Colors.indigoAccent),
            ),
            const Divider(),
            ListTile(
              onTap: () {
                final route = MaterialPageRoute(
                    builder: (context) => const DolorMuelasScreen());
                Navigator.push(context, route);
              },
              title: const Text(
                'Dolor de Muelas',
                style: TextStyle(fontSize: 20),
              ),
              leading: const Icon(Icons.sentiment_dissatisfied_rounded,
                  color: Colors.indigoAccent),
              trailing: const Icon(Icons.arrow_forward_ios,
                  color: Colors.indigoAccent),
            ),
            const Divider(),
            ListTile(
              onTap: () {
                final route = MaterialPageRoute(
                    builder: (context) => const DolorRinonScreen());
                Navigator.push(context, route);
              },
              title: const Text(
                'Dolor de Riñon',
                style: TextStyle(fontSize: 20),
              ),
              leading: const Icon(Icons.personal_injury_outlined,
                  color: Colors.indigoAccent),
              trailing: const Icon(Icons.arrow_forward_ios,
                  color: Colors.indigoAccent),
            ),
            const Divider(),
            ListTile(
              title: Text('Sección E',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.green.shade900,
                  ),
                  textAlign: TextAlign.center),
            ),
            const Divider(),
            ListTile(
              onTap: () {
                final route = MaterialPageRoute(
                    builder: (context) => const EnfermedadCorazonScreen());
                Navigator.push(context, route);
              },
              title: const Text(
                'Enfermedad del Corazón',
                style: TextStyle(fontSize: 20),
              ),
              leading: const Icon(Icons.favorite, color: Colors.indigoAccent),
              trailing: const Icon(Icons.arrow_forward_ios,
                  color: Colors.indigoAccent),
            ),
            const Divider(),
            ListTile(
              onTap: () {
                final route = MaterialPageRoute(
                    builder: (context) => const EnuresisScreen());
                Navigator.push(context, route);
              },
              title: const Text(
                'Enuresis (orina en la cama)',
                style: TextStyle(fontSize: 20),
              ),
              leading:
                  const Icon(Icons.legend_toggle, color: Colors.indigoAccent),
              trailing: const Icon(Icons.arrow_forward_ios,
                  color: Colors.indigoAccent),
            ),
            const Divider(),
            ListTile(
              onTap: () {
                final route = MaterialPageRoute(
                    builder: (context) => const EsguincesScreen());
                Navigator.push(context, route);
              },
              title: const Text(
                'Esguinces',
                style: TextStyle(fontSize: 20),
              ),
              leading: const Icon(Icons.do_not_step_rounded,
                  color: Colors.indigoAccent),
              trailing: const Icon(Icons.arrow_forward_ios,
                  color: Colors.indigoAccent),
            ),
            const Divider(),
            ListTile(
              onTap: () {
                final route = MaterialPageRoute(
                    builder: (context) => const EstrenimientoScreen());
                Navigator.push(context, route);
              },
              title: const Text(
                'Estreñimiento',
                style: TextStyle(fontSize: 20),
              ),
              leading: const Icon(Icons.airline_seat_legroom_normal_rounded,
                  color: Colors.indigoAccent),
              trailing: const Icon(Icons.arrow_forward_ios,
                  color: Colors.indigoAccent),
            ),
            const Divider(),
            ListTile(
              title: Text('Sección F',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.green.shade900,
                  ),
                  textAlign: TextAlign.center),
            ),
            const Divider(),
            ListTile(
              onTap: () {
                final route = MaterialPageRoute(
                    builder: (context) => const FatigaScreen());
                Navigator.push(context, route);
              },
              title: const Text(
                'Fatiga',
                style: TextStyle(fontSize: 20),
              ),
              leading: const Icon(Icons.elderly, color: Colors.indigoAccent),
              trailing: const Icon(Icons.arrow_forward_ios,
                  color: Colors.indigoAccent),
            ),
            const Divider(),
            ListTile(
              onTap: () {
                final route = MaterialPageRoute(
                    builder: (context) => const FiebreTifoideaScreen());
                Navigator.push(context, route);
              },
              title: const Text(
                'Fiebre Tifoidea',
                style: TextStyle(fontSize: 20),
              ),
              leading: const Icon(Icons.sick, color: Colors.indigoAccent),
              trailing: const Icon(Icons.arrow_forward_ios,
                  color: Colors.indigoAccent),
            ),
            const Divider(),
            ListTile(
              onTap: () {
                final route = MaterialPageRoute(
                    builder: (context) => const FrigidezScreen());
                Navigator.push(context, route);
              },
              title: const Text(
                'Frigidez',
                style: TextStyle(fontSize: 20),
              ),
              leading:
                  const Icon(Icons.sports_kabaddi, color: Colors.indigoAccent),
              trailing: const Icon(Icons.arrow_forward_ios,
                  color: Colors.indigoAccent),
            ),
            const Divider(),
            ListTile(
              title: Text('Sección G',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.green.shade900,
                  ),
                  textAlign: TextAlign.center),
            ),
            const Divider(),
            ListTile(
              onTap: () {
                final route = MaterialPageRoute(
                    builder: (context) => const GingivitisScreen());
                Navigator.push(context, route);
              },
              title: const Text(
                'Gingivitis',
                style: TextStyle(fontSize: 20),
              ),
              leading: const Icon(Icons.mood_bad, color: Colors.indigoAccent),
              trailing: const Icon(Icons.arrow_forward_ios,
                  color: Colors.indigoAccent),
            ),
            const Divider(),
            ListTile(
              onTap: () {
                final route = MaterialPageRoute(
                    builder: (context) => const GripeScreen());
                Navigator.push(context, route);
              },
              title: const Text(
                'Gripe',
                style: TextStyle(fontSize: 20),
              ),
              leading: const Icon(Icons.masks, color: Colors.indigoAccent),
              trailing: const Icon(Icons.arrow_forward_ios,
                  color: Colors.indigoAccent),
            ),
            const Divider(),
            ListTile(
              onTap: () {
                final route = MaterialPageRoute(
                    builder: (context) => const GusanosIntestinalesScreen());
                Navigator.push(context, route);
              },
              title: const Text(
                'Gusanos Intestinales',
                style: TextStyle(fontSize: 20),
              ),
              leading:
                  const Icon(Icons.pest_control, color: Colors.indigoAccent),
              trailing: const Icon(Icons.arrow_forward_ios,
                  color: Colors.indigoAccent),
            ),
            const Divider(),
            ListTile(
              title: Text('Sección H',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.green.shade900,
                  ),
                  textAlign: TextAlign.center),
            ),
            const Divider(),
            ListTile(
              onTap: () {
                final route = MaterialPageRoute(
                    builder: (context) => const HemorragiaScreen());
                Navigator.push(context, route);
              },
              title: const Text(
                'Hemorragia',
                style: TextStyle(fontSize: 20),
              ),
              leading: const Icon(Icons.bloodtype, color: Colors.indigoAccent),
              trailing: const Icon(Icons.arrow_forward_ios,
                  color: Colors.indigoAccent),
            ),
            const Divider(),
            ListTile(
              onTap: () {
                final route = MaterialPageRoute(
                    builder: (context) => const HeridaScreen());
                Navigator.push(context, route);
              },
              title: const Text(
                'Herida',
                style: TextStyle(fontSize: 20),
              ),
              leading:
                  const Icon(Icons.personal_injury, color: Colors.indigoAccent),
              trailing: const Icon(Icons.arrow_forward_ios,
                  color: Colors.indigoAccent),
            ),
            const Divider(),
            ListTile(
              onTap: () {
                final route =
                    MaterialPageRoute(builder: (context) => const HipoScreen());
                Navigator.push(context, route);
              },
              title: const Text(
                'Hipo',
                style: TextStyle(fontSize: 20),
              ),
              leading: const Icon(Icons.sentiment_dissatisfied,
                  color: Colors.indigoAccent),
              trailing: const Icon(Icons.arrow_forward_ios,
                  color: Colors.indigoAccent),
            ),
            const Divider(),
            ListTile(
              title: Text('Sección I',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.green.shade900,
                  ),
                  textAlign: TextAlign.center),
            ),
            const Divider(),
            ListTile(
              onTap: () {
                final route = MaterialPageRoute(
                    builder: (context) => const InfeccionPulmonarScreen());
                Navigator.push(context, route);
              },
              title: const Text(
                'Infección Polmular',
                style: TextStyle(fontSize: 20),
              ),
              leading: const Icon(Icons.air, color: Colors.indigoAccent),
              trailing: const Icon(Icons.arrow_forward_ios,
                  color: Colors.indigoAccent),
            ),
            const Divider(),
            ListTile(
              title: Text('Sección L',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.green.shade900,
                  ),
                  textAlign: TextAlign.center),
            ),
            const Divider(),
            ListTile(
              onTap: () {
                final route = MaterialPageRoute(
                    builder: (context) => const LesionesSexoScreen());
                Navigator.push(context, route);
              },
              title: const Text(
                'Lesiones en el Sexo',
                style: TextStyle(fontSize: 20),
              ),
              leading: const Icon(Icons.sports_mma, color: Colors.indigoAccent),
              trailing: const Icon(Icons.arrow_forward_ios,
                  color: Colors.indigoAccent),
            ),
            const Divider(),
            ListTile(
              title: Text('Sección M',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.green.shade900,
                  ),
                  textAlign: TextAlign.center),
            ),
            const Divider(),
            ListTile(
              onTap: () {
                final route = MaterialPageRoute(
                    builder: (context) => const MareoScreen());
                Navigator.push(context, route);
              },
              title: const Text(
                'Mareo',
                style: TextStyle(fontSize: 20),
              ),
              leading: const Icon(Icons.sports_handball_outlined,
                  color: Colors.indigoAccent),
              trailing: const Icon(Icons.arrow_forward_ios,
                  color: Colors.indigoAccent),
            ),
            const Divider(),
            ListTile(
              onTap: () {
                final route = MaterialPageRoute(
                    builder: (context) => const MigranaScreen());
                Navigator.push(context, route);
              },
              title: const Text(
                'Migraña',
                style: TextStyle(fontSize: 20),
              ),
              leading:
                  const Icon(Icons.hail_outlined, color: Colors.indigoAccent),
              trailing: const Icon(Icons.arrow_forward_ios,
                  color: Colors.indigoAccent),
            ),
            const Divider(),
            ListTile(
              title: Text('Sección O',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.green.shade900,
                  ),
                  textAlign: TextAlign.center),
            ),
            const Divider(),
            ListTile(
              onTap: () {
                final route = MaterialPageRoute(
                    builder: (context) => const OjosCansadosScreen());
                Navigator.push(context, route);
              },
              title: const Text(
                'Ojos Cansados',
                style: TextStyle(fontSize: 20),
              ),
              leading: const Icon(Icons.remove_red_eye_outlined,
                  color: Colors.indigoAccent),
              trailing: const Icon(Icons.arrow_forward_ios,
                  color: Colors.indigoAccent),
            ),
            const Divider(),
            ListTile(
              title: Text('Sección P',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.green.shade900,
                  ),
                  textAlign: TextAlign.center),
            ),
            const Divider(),
            ListTile(
              onTap: () {
                final route = MaterialPageRoute(
                    builder: (context) => const PerdidaCabelloScreen());
                Navigator.push(context, route);
              },
              title: const Text(
                'Perdida del Cabello',
                style: TextStyle(fontSize: 20),
              ),
              leading: const Icon(Icons.face_retouching_off_rounded,
                  color: Colors.indigoAccent),
              trailing: const Icon(Icons.arrow_forward_ios,
                  color: Colors.indigoAccent),
            ),
            const Divider(),
            ListTile(
              onTap: () {
                final route = MaterialPageRoute(
                    builder: (context) => const PicaduraAbejaScreen());
                Navigator.push(context, route);
              },
              title: const Text(
                'Picadura de Abeja o Avispa ',
                style: TextStyle(fontSize: 20),
              ),
              leading: const Icon(Icons.emoji_nature_outlined,
                  color: Colors.indigoAccent),
              trailing: const Icon(Icons.arrow_forward_ios,
                  color: Colors.indigoAccent),
            ),
            const Divider(),
            ListTile(
              onTap: () {
                final route = MaterialPageRoute(
                    builder: (context) => const PicaduraInsectoScreen());
                Navigator.push(context, route);
              },
              title: const Text(
                'Picaduras de Insectos',
                style: TextStyle(fontSize: 20),
              ),
              leading: const Icon(Icons.bug_report_outlined,
                  color: Colors.indigoAccent),
              trailing: const Icon(Icons.arrow_forward_ios,
                  color: Colors.indigoAccent),
            ),
            const Divider(),
            ListTile(
              onTap: () {
                final route = MaterialPageRoute(
                    builder: (context) => const PicazonScreen());
                Navigator.push(context, route);
              },
              title: const Text(
                'Picazón',
                style: TextStyle(fontSize: 20),
              ),
              leading: const Icon(Icons.personal_injury_outlined,
                  color: Colors.indigoAccent),
              trailing: const Icon(Icons.arrow_forward_ios,
                  color: Colors.indigoAccent),
            ),
            const Divider(),
            ListTile(
              onTap: () {
                final route = MaterialPageRoute(
                    builder: (context) => const PicazonVaginalScreen());
                Navigator.push(context, route);
              },
              title: const Text(
                'Picazón Vaginal',
                style: TextStyle(fontSize: 20),
              ),
              leading: const Icon(Icons.border_right_rounded,
                  color: Colors.indigoAccent),
              trailing: const Icon(Icons.arrow_forward_ios,
                  color: Colors.indigoAccent),
            ),
            const Divider(),
            ListTile(
              title: Text('Sección Q',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.green.shade900,
                  ),
                  textAlign: TextAlign.center),
            ),
            const Divider(),
            ListTile(
              onTap: () {
                final route = MaterialPageRoute(
                    builder: (context) => const QuemaduraScreen());
                Navigator.push(context, route);
              },
              title: const Text(
                'Quemadura',
                style: TextStyle(fontSize: 20),
              ),
              leading:
                  const Icon(Icons.personal_injury, color: Colors.indigoAccent),
              trailing: const Icon(Icons.arrow_forward_ios,
                  color: Colors.indigoAccent),
            ),
            const Divider(),
            ListTile(
              title: Text('Sección R',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.green.shade900,
                  ),
                  textAlign: TextAlign.center),
            ),
            const Divider(),
            ListTile(
              onTap: () {
                final route = MaterialPageRoute(
                    builder: (context) => const ReumatismoScreen());
                Navigator.push(context, route);
              },
              title: const Text(
                'Reumatismo',
                style: TextStyle(fontSize: 20),
              ),
              leading: const Icon(Icons.dry, color: Colors.indigoAccent),
              trailing: const Icon(Icons.arrow_forward_ios,
                  color: Colors.indigoAccent),
            ),
            const Divider(),
            ListTile(
              title: Text('Sección S',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.green.shade900,
                  ),
                  textAlign: TextAlign.center),
            ),
            const Divider(),
            ListTile(
              onTap: () {
                final route = MaterialPageRoute(
                    builder: (context) => const SarampionScreen());
                Navigator.push(context, route);
              },
              title: const Text(
                'Sarampión',
                style: TextStyle(fontSize: 20),
              ),
              leading: const Icon(Icons.sentiment_very_dissatisfied_outlined,
                  color: Colors.indigoAccent),
              trailing: const Icon(Icons.arrow_forward_ios,
                  color: Colors.indigoAccent),
            ),
            const Divider(),
            ListTile(
              title: Text('Sección T',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.green.shade900,
                  ),
                  textAlign: TextAlign.center),
            ),
            const Divider(),
            ListTile(
              onTap: () {
                final route =
                    MaterialPageRoute(builder: (context) => const TosScreen());
                Navigator.push(context, route);
              },
              title: const Text(
                'Tos',
                style: TextStyle(fontSize: 20),
              ),
              leading:
                  const Icon(Icons.masks_rounded, color: Colors.indigoAccent),
              trailing: const Icon(Icons.arrow_forward_ios,
                  color: Colors.indigoAccent),
            ),
            const Divider(),
            ListTile(
              onTap: () {
                final route = MaterialPageRoute(
                    builder: (context) => const TosFerinaScreen());
                Navigator.push(context, route);
              },
              title: const Text(
                'Tos Ferina',
                style: TextStyle(fontSize: 20),
              ),
              leading: const Icon(Icons.sentiment_dissatisfied_rounded,
                  color: Colors.indigoAccent),
              trailing: const Icon(Icons.arrow_forward_ios,
                  color: Colors.indigoAccent),
            ),
            const Divider(),
            ListTile(
              title: Text('Sección U',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.green.shade900,
                  ),
                  textAlign: TextAlign.center),
            ),
            const Divider(),
            ListTile(
              onTap: () {
                final route = MaterialPageRoute(
                    builder: (context) => const UlcerasScreen());
                Navigator.push(context, route);
              },
              title: const Text(
                'Úlceras en la boca',
                style: TextStyle(fontSize: 20),
              ),
              leading: const Icon(Icons.balcony_outlined,
                  color: Colors.indigoAccent),
              trailing: const Icon(Icons.arrow_forward_ios,
                  color: Colors.indigoAccent),
            ),
          ],
        ),
      ),
      //para hacer scroll estilo iOS

      // separatorBuilder: (_, __) => const Divider(),
      // itemCount: AppRoutes2.menuOptionss.length)
    );
  }
}
