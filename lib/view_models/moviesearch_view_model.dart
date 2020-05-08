import 'package:flutter/material.dart';
import 'package:gdg_uyo_1/api_provider/movie_api_provider.dart';
import 'package:gdg_uyo_1/models/movie_search.dart';

class GetSearch extends ChangeNotifier{

  SearchViewModel ser = SearchViewModel();

  Future<void> serReq(String find)async{
    final found = await MovieProvider().movRequest(find);
    this.ser = SearchViewModel(searchRes: found);
    notifyListeners();
  }
}



class SearchViewModel{
  final MovieSearch searchRes;
  SearchViewModel({this.searchRes});


  int get page{
    return searchRes.page;
  }

  int get totalRes {
    return searchRes.totalResults;
  }

  int get totalPages{
    return searchRes.totalPages;
  }

  List get results{
    return searchRes.results;
  }
}