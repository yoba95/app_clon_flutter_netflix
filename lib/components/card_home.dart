import 'package:app_netflix/components/nav_bar_superior.dart';
import 'package:flutter/material.dart';

class CardPrincipal extends StatelessWidget {
  const CardPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        cabecera(),
        infoSerie(),
        botonera(),
      ],
    );
  }

  Widget cabecera() {
    return Stack(
      children: [
        Image.asset(
          'assets/imgs/señor.jpg',
          height: 350.0,
          //fit: BoxFit.cover,
        ),
        Container(
          width: double.infinity,
          height: 350.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.bottomCenter,
              colors: <Color>[Colors.black38, Colors.black],
            ),
          ),
        ),
        SafeArea(child: NavBarSuperior()),
      ],
    );
  }

  Widget infoSerie() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text(
          'Telenovelas',
          style: TextStyle(color: Colors.white, fontSize: 15.00),
        ),
        SizedBox(
          width: 6.0,
        ),
        Icon(
          Icons.fiber_manual_record,
          color: Colors.red,
          size: 10.0,
        ),
        SizedBox(
          width: 6.0,
        ),
        Text(
          'Series',
          style: TextStyle(color: Colors.white, fontSize: 15.00),
        ),
        SizedBox(
          width: 6.0,
        ),
        Icon(
          Icons.fiber_manual_record,
          color: Colors.red,
          size: 10.0,
        ),
        SizedBox(
          width: 6.0,
        ),
        Text(
          'Comedia',
          style: TextStyle(color: Colors.white, fontSize: 15.00),
        ),
        SizedBox(
          width: 6.0,
        ),
        Icon(
          Icons.fiber_manual_record,
          color: Colors.red,
          size: 10.0,
        ),
        SizedBox(
          width: 6.0,
        ),
        Text(
          'Terror',
          style: TextStyle(color: Colors.white, fontSize: 15.00),
        ),
      ],
    );
  }

  Widget botonera() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Icon(Icons.check, color: Colors.white),
              SizedBox(
                height: 3.0,
              ),
              Text(
                "Mi lista",
                style: TextStyle(color: Colors.white, fontSize: 15.0),
              )
            ],
          ),
          MaterialButton(
            minWidth: 150.0,
            height: 40.0,
            onPressed: () {},
            color: Colors.white,
            child: Text('Reproducir', style: TextStyle(color: Colors.black)),
          ),
          Column(
            children: [
              Icon(
                Icons.info_outline,
                color: Colors.white,
              ),
              SizedBox(
                height: 3.0,
              ),
              Text(
                "Información",
                style: TextStyle(color: Colors.white, fontSize: 15.0),
              )
            ],
          )
        ],
      ),
    );
  }
}
