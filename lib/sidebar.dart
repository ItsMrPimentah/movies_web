import 'package:flutter/material.dart';
import 'package:movies_web/pages/main_area_controller.dart';
import 'package:provider/provider.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = context.read<MainAreaController>();
    var controllerWatch = context.watch<MainAreaController>();
    return SizedBox(
      width: 300,
      child: Column(
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: FlutterLogo(
              size: 80,
            ),
          ),
        ],
      ),
    );
  }
}
