import 'package:flutter/material.dart';
import 'package:gdg_uyo_1/api_provider/movie_api_provider.dart';
import 'package:gdg_uyo_1/models/popular.dart';

class GetPopular extends ChangeNotifier{
  PopularViewModel popu = PopularViewModel();

  Future<void> popoular()async{
    final popule = await MovieProvider().popOpi();
    this.popu = PopularViewModel(popular: popule);
    notifyListeners();
  }
}

class PopularViewModel{
  final Popular popular;
  PopularViewModel({this.popular});

  int get page{
    return popular.page;
  }

  List get results{
    return popular.results;
  }

  int get totalPages{
    return popular.totalPages;
  }

  int get totalRes{
    return popular.totalResults;
  }
}