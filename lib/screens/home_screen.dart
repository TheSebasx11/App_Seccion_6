import 'package:app_seccion_6/router/app_routes.dart';
import 'package:app_seccion_6/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:app_seccion_6/screens/screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Options = AppRoutes.menuOptions;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
          //backgroundColor: ,
        ),
        body: ListView.builder(
          itemBuilder: (context, i) => ListTile(
            title: Text(Options[i].name),
            leading: Icon(Options[i].icon, color: AppTheme.primary),
            onTap: () {
              Navigator.pushNamed(context, Options[i].route);
            },
          ),
          itemCount: AppRoutes.menuOptions.length,
        ));
  }
}
