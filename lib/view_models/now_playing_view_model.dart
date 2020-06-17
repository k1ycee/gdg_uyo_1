import 'package:flutter/material.dart';
import 'package:gdg_uyo_1/api_provider/movie_api_provider.dart';
import 'package:gdg_uyo_1/models/now_palying.dart';

class GetPlaying extends ChangeNotifier{
  List<NowPlayingResult> play = List<NowPlayingResult>();

  Future<void> plays()async{
    final ply = await MovieProvider().showing();
    this.play = ply;
    notifyListeners();
  }
}



