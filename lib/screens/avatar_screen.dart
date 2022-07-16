import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bebesita"),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              child: Text("AA"),
              backgroundColor: Colors.indigoAccent,
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 100,
          backgroundImage: NetworkImage(
              "https://eldiariony.com/wp-content/uploads/sites/2/2022/01/Anuel-AA.jpg?quality=60&strip=all&w=1200"),
        ),
      ),
    );
  }
}
