import 'package:app_seccion_6/themes/theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  final String title, subtitle;
  final IconData icon;
  const CustomCardType1({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.icon,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.all(8),
      child: Column(
        children: [
          ListTile(
            title: Text(title),
            leading: Icon(
              icon,
              color: AppTheme.primary,
              size: 45,
            ),
            subtitle: Text(subtitle),
            onTap: () {},
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text("Cancel"),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text("Ok"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
