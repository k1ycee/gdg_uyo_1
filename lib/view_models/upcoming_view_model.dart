import 'package:flutter/material.dart';
import 'package:gdg_uyo_1/api_provider/movie_api_provider.dart';
import 'package:gdg_uyo_1/models/upcoming.dart';

class GetUpcoming extends ChangeNotifier{

  List<UpcomingResult> upcom = List<UpcomingResult>();

  Future<void> upComing()async{
    final upc = await MovieProvider().comingSoon();
    this.upcom = upc;
    notifyListeners();
  }
}


