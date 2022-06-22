class IntroData {
  final String title;
  final String image;

  IntroData({
    required this.title,
    required this.image,
  });
}

List<IntroData> introdataContents = [
  IntroData(
    title: 'Hola, bienvenido a\n tu app de Plantas Medicinales',
    image: 'lib/assets/imagenes/bienvenido.png',
  ),
  IntroData(
    title: 'Contarás con un diccionario de plantas\n ordenado alfabéticamente ',
    image: 'lib/assets/imagenes/diccionario.png',
  ),
  IntroData(
    title:
        'Información importante de cada planta medicinal \n y como también su importancia ',
    image: 'lib/assets/imagenes/informacion.png',
  ),
  IntroData(
    title: 'Sección de tratamientos',
    image: 'lib/assets/imagenes/tratamientos.png',
  ),
  IntroData(
    title: 'Y sección de definiciones',
    image: 'lib/assets/imagenes/definiciones.png',
  ),
  IntroData(
    title: 'Sin más que decir...',
    image: 'lib/assets/imagenes/comenzar.png',
  ),
];
