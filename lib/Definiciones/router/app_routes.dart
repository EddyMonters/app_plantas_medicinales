import 'package:app_plantas_medicinales/Intro/intro.dart';
import 'package:flutter/material.dart';
import 'package:app_plantas_medicinales/Definiciones/Models/models.dart';
import 'package:app_plantas_medicinales/screens/screens.dart';

class AppRoutes {
  //static const initialRoute = 'intro';

  static final menuOptions = <MenuOption>[
    MenuOption(
      route: 'infusión (para plantas arómaticas)',
      name: 'Infusión (para plantas arómaticas)',
      screen: const InfusionPage(),
      icon: Icons.free_breakfast,
    ),
    MenuOption(
      route: 'cocimiento',
      name: 'Cocimiento',
      screen: const CocimientoPage(),
      icon: Icons.filter_vintage_outlined,
    ),
    MenuOption(
        route: 'maceración (partes vegetales sensibles al calor)',
        name: 'Maceración (partes vegetales sensibles al calor)',
        screen: const MaceracionPage(),
        icon: Icons.local_fire_department),
    MenuOption(
      route: 'compresas o fomento',
      name: 'Compresas o fomento',
      screen: const CompresasPage(),
      icon: Icons.free_breakfast,
    ),
    MenuOption(
      route: 'cataplasma o emplasto',
      name: 'Cataplasma o emplasto',
      screen: const CataplasmaPage(),
      icon: Icons.healing,
    ),
    MenuOption(
      route: 'baño',
      name: 'Baño',
      screen: const BanoPage(),
      icon: Icons.bathtub,
    ),
    MenuOption(
        route: 'gargarismo',
        name: 'Gargarismo',
        screen: const GargarismoPage(),
        icon: Icons.local_drink),
    MenuOption(
        route: 'extracto hidroalcohólico',
        name: 'Extracto hidroalcohólico',
        screen: const ExtractoPage(),
        icon: Icons.format_color_fill_rounded),
    MenuOption(
      route: 'tintura',
      name: 'Tintura',
      screen: const TinturaPage(),
      icon: Icons.colorize_outlined,
    ),
    MenuOption(
      route: 'jarabe',
      name: 'Jarabe',
      screen: const JarabePage(),
      icon: Icons.sanitizer,
    ),
    MenuOption(
        route: 'pomada',
        name: 'Pomada',
        screen: const PomadaPage(),
        icon: Icons.medication),
    MenuOption(
        route: 'lavativa',
        name: 'Lavativa',
        screen: const LavativaPage(),
        icon: Icons.spa),
    MenuOption(
      route: 'polvo',
      name: 'Polvo',
      screen: const PolvoPage(),
      icon: Icons.medical_services_rounded,
    ),
    MenuOption(
      route: 'microdosis',
      name: 'Microdosis',
      screen: const MicrodosisPage(),
      icon: Icons.invert_colors_outlined,
    ),
    MenuOption(
      route: 'topico',
      name: 'Tópico',
      screen: const TopicoPage(),
      icon: Icons.local_hospital,
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions) {
      appRoutes.addAll({
        option.route: (BuildContext context) => option.screen,
      });
    }
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute<RouteSettings>(settings) {
    //return MaterialPageRoute(builder: (context) => const HomeScreen());
    return MaterialPageRoute(builder: (context) => const IntroPage());
  }
}
