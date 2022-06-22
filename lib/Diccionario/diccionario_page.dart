import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/screens/screens.dart';
import 'package:flutter/material.dart';

class DiccionarioPage extends StatelessWidget {
  const DiccionarioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Diccionario de plantas',
            style: TextStyle(fontSize: 25)),
        flexibleSpace: const FlexibleSpaceBar(
          background: Image(
            image: AssetImage('lib/assets/Diccionario.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      body: FadeInUp(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            SizedBox(
              height: 15,
            ),
            OrdenConA(),
            SizedBox(
              height: 15,
            ),
            OrdenConB(),
            SizedBox(
              height: 15,
            ),
            OrdenConC(),
            SizedBox(
              height: 15,
            ),
            OrdenConD(),
            SizedBox(
              height: 15,
            ),
            OrdenConE(),
            SizedBox(
              height: 15,
            ),
            OrdenConF(),
            SizedBox(
              height: 15,
            ),
            OrdenConG(),
            SizedBox(
              height: 15,
            ),
            OrdenConH(),
            SizedBox(
              height: 15,
            ),
            OrdenConJ(),
            SizedBox(
              height: 15,
            ),
            OrdenConL(),
            SizedBox(
              height: 15,
            ),
            OrdenConM(),
            SizedBox(
              height: 15,
            ),
            OrdenConN(),
            SizedBox(
              height: 15,
            ),
            OrdenConO(),
            SizedBox(
              height: 15,
            ),
            OrdenConP(),
            SizedBox(
              height: 15,
            ),
            OrdenConR(),
            SizedBox(
              height: 15,
            ),
            OrdenConS(),
            SizedBox(
              height: 15,
            ),
            OrdenConT(),
            SizedBox(
              height: 15,
            ),
            OrdenConV(),
            SizedBox(
              height: 15,
            ),
            OrdenConZ(),
            SizedBox(
              height: 70,
            ),
          ],
        ),
      ),
    );
  }
}
