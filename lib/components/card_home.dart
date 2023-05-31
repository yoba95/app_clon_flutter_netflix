import 'package:app_netflix/components/nav_bar_superior.dart';
import 'package:flutter/material.dart';

class CardPrincipal extends StatelessWidget {
  const CardPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [this.cabecera()],
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
}
