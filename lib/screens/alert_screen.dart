import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: const Text("Titulo de la alerta"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text("Este es el contenido"),
              Padding(padding: EdgeInsets.only(top: 10)),
              FlutterLogo(size: 50)
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Cancelar"),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Cancelar x2"),
            )
          ],
        );
      },
    );
  }

  void displayDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          elevation: 5,
          title: const Text("Alerta"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text("Este es el contenido"),
              Padding(padding: EdgeInsets.only(top: 10)),
              FlutterLogo(size: 50)
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Cancelar"),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Cancelar x2"),
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => Platform.isAndroid
              ? displayDialog(context)
              : displayDialogIOS(context),
          //  onPressed: () => displayDialogIOS(context),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Text("Mostrar Alerta"),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        child: const Icon(Icons.close),
      ),
    );
  }
}
