import 'package:flutter/material.dart';

class ListView2 extends StatelessWidget {
  const ListView2({Key? key}) : super(key: key);
  final options = const [
    "Stratocaster",
    "Telecaster",
    "Les Paul",
    "Acoustic",
    "Sitar",
    "Ukulele"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("ListView 2"),
          elevation: 10,
          backgroundColor: Colors.indigo,
        ),
        body: ListView.builder(
          itemBuilder: (context, index) => ListTile(
            title: Text(options[index]),
            leading: const Icon(
              Icons.circle,
              color: Color(0xFFEE0000),
            ),
            trailing: const Icon(Icons.arrow_forward_ios_sharp),
            onTap: () {},
          ),
          itemCount: options.length,
          //separatorBuilder: (context, index) => const Divider(),
        ));
  }
}
