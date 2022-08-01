import 'package:flutter/material.dart';
import 'package:movies_web/pages/main_area_controller.dart';
import 'package:provider/provider.dart';

import 'pages/main_area.dart';
import 'sidebar.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) =>
          Provider.of<MainAreaController>(context, listen: false),
      child: MoviesApp()));
}

class MoviesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  var movies = [];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.amber,
              child: const SideBar(),
            ),
          ),
          Expanded(
            flex: 8,
            child: Container(
              color: Colors.blue,
              child: MainArea(
                listadeItens: movies,
              ),
            ),
          )
        ],
      ),
    );
  }
}
