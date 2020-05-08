import 'package:flutter/material.dart';
import 'package:gdg_uyo_1/api_provider/movie_api_provider.dart';
import 'package:gdg_uyo_1/models/upcoming.dart';

class GetUpcoming extends ChangeNotifier{

  UpcomingViewModel upcom = UpcomingViewModel();

  Future<void> upComing()async{
    final upc = await MovieProvider().comingSoon();
    this.upcom = UpcomingViewModel(upcoming: upc);
    notifyListeners();
  }
}


class UpcomingViewModel{
  final Upcoming upcoming;
  UpcomingViewModel({this.upcoming});

  List get results{
    return upcoming.results;
  }

  int get page{
    return upcoming.page;
  }

  int get totalRes{
    return upcoming.totalResults;
  }

  int get totalpages{
    return upcoming.totalPages;
  }

  Dates get dates{
    return upcoming.dates;
  } 
}