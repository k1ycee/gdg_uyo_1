import 'package:flutter/material.dart';
import 'package:gdg_uyo_1/api_provider/movie_api_provider.dart';
import 'package:gdg_uyo_1/models/popular.dart';

class GetPopular extends ChangeNotifier{
  List<PopularResult> popu = List<PopularResult>();

  Future<void> popoular()async{
    final popule = await MovieProvider().popOpi();
    this.popu = popule;
    notifyListeners();
  }
}