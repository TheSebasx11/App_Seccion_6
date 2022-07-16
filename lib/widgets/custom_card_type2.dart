import 'package:app_seccion_6/themes/theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 5,
      shadowColor: AppTheme.primary.withOpacity(0.5),
      child: Column(
        children: [
          const FadeInImage(
            image: NetworkImage(
                "https://camo.githubusercontent.com/dc130e15e764a2ce83daf7503c9b73e5ee349259ceb82b4a0f393339289f8564/68747470733a2f2f63646e2d696d616765732d312e6d656469756d2e636f6d2f6d61782f313230302f312a352d616f4b3849426d58766535776842514d393047412e706e67"),
            placeholder: AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 260,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 30),
          ),
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child: const Text("Poderoso flutter"),
          ),
        ],
      ),
    );
  }
}
