import 'package:app_netflix/components/card_home.dart';
import 'package:flutter/material.dart';

class MyHomePages extends StatelessWidget {
  const MyHomePages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [CardPrincipal()],
      ),
    );
  }
}
