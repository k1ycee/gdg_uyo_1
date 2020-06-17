import 'package:flutter/material.dart';
import 'package:gdg_uyo_1/api_provider/movie_api_provider.dart';
import 'package:gdg_uyo_1/models/top_rated_model.dart';

class GetTopRated extends ChangeNotifier{ 

  List<TopRatedResult> topRtvm = List<TopRatedResult>();

  Future<void> topRated()async{
    final tprt = await MovieProvider().tpRated();
    this.topRtvm = tprt;
    notifyListeners();
  }
}
