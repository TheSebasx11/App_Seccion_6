import 'package:flutter/material.dart';
import 'package:app_seccion_6/widgets/widget.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card View"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        children: const [
          CustomCardType1(
            title: "Anuel",
            subtitle: "siempre que te toco y te lambo los deos",
            icon: Icons.accessible_sharp,
          ),
          SizedBox(height: 15),
          CustomCardType2(),
          SizedBox(height: 15),
          CustomCardType2(),
          SizedBox(height: 15),
          CustomCardType2(),
          SizedBox(height: 15),
          CustomCardType2(),
        ],
      ),
    );
  }
}
