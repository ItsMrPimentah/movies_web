import 'package:flutter/material.dart';

class MainArea extends StatelessWidget {
  var listadeItens;
  MainArea({Key? key, this.listadeItens}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            height: 200,
            color: Colors.blue,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.menu),
                ),
                const Spacer(),
                const Icon(Icons.search),
                const Icon(Icons.notifications),
                const Icon(Icons.account_circle),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Joaquim Campos",
                      style: TextStyle(fontWeight: FontWeight.w800),
                    ),
                    Text(
                      "Manager",
                      style: TextStyle(fontWeight: FontWeight.w100),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Expanded(
          flex: 10,
          child: Container(
            height: 500,
            width: MediaQuery.of(context).size.width,
            color: Colors.red,
            child: Column(
              children: [
                const Text("Recomendações"),
                SizedBox(
                  height: 400,
                  child: ListView.builder(
                    itemCount: listadeItens.length,
                    itemBuilder: (context, index) {
                      return Container();
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
