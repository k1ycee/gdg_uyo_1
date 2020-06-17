import 'package:flutter/material.dart';
import 'package:gdg_uyo_1/api_provider/movie_api_provider.dart';
import 'package:gdg_uyo_1/models/movie_search.dart';

class GetSearch extends ChangeNotifier{

  List<MovieSearchResult> ser = List<MovieSearchResult>();

  Future<void> serReq(String find)async{
    final found = await MovieProvider().movRequest(find);
    this.ser = found;
    notifyListeners();
  }
}


