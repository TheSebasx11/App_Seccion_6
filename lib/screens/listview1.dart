import 'package:flutter/material.dart';

class ListView1 extends StatelessWidget {
  final options = const [
    "Stratocaster",
    "Telecaste",
    "Les Paul",
    "Acoustic",
    "Sitar",
    "Ukulele"
  ];

  const ListView1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const style = TextStyle(fontSize: 20);
    return Scaffold(
        appBar: AppBar(
          title: const Text("View 1"),
          //backgroundColor:
        ),
        body: ListView(
          children: [
            ...options
                .map((e) => ListTile(
                      title: Text(e.toString(), style: style),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        //color: color_principal,
                      ),
                    ))
                .toList(),
            const Divider(),
          ],
        ));
  }
}
