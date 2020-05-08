import 'package:flutter/material.dart';
import 'package:gdg_uyo_1/api_provider/movie_api_provider.dart';
import 'package:gdg_uyo_1/models/top_rated_model.dart';

class GetTopRated extends ChangeNotifier{ 

  TopRatedViewModel topRtvm = TopRatedViewModel();

  Future<void> topRated()async{
    final tprt = await MovieProvider().tpRated();
    this.topRtvm = TopRatedViewModel(topRated: tprt);
    notifyListeners();
  }
}


class TopRatedViewModel{
  final TopRated topRated;
  TopRatedViewModel({this.topRated});

  List get results{
    return topRated.results;
  }

  int get page{
    return topRated.page;
  }

  int get totalPage{
    return topRated.totalPages;
  }

  int get totalRes{
    return topRated.totalResults;
  }
  
}