import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class MainAreaController extends ChangeNotifier {
  var filmes = [];

  atualizarlistadeFilmes() {
    getData().then((value) {
      for (var item in value) {
        filmes.add(value);
      }
    });
    notifyListeners();
  }

  Future getData() async {
    var dio = Dio();
    var response = await dio.get(
      "https://api.themoviedb.org/4/list/2?api_key=0d322279f690c939ec9f74afd2962df4",
    );

    return response.data['results'];
  }
}
