import 'package:flutter/material.dart';
import 'package:gdg_uyo_1/view_models/moviesearch_view_model.dart';
import 'package:gdg_uyo_1/view_models/now_playing_view_model.dart';
import 'package:gdg_uyo_1/view_models/popular_view_model.dart';
import 'package:gdg_uyo_1/view_models/top_rated_view_model.dart';
import 'package:gdg_uyo_1/view_models/upcoming_view_model.dart';
import 'package:gdg_uyo_1/views/d_screen.dart';
import 'package:gdg_uyo_1/views/now_playing.dart';
import 'package:gdg_uyo_1/views/popular_screen.dart';
import 'package:gdg_uyo_1/views/top_rated_screen.dart';
import 'package:gdg_uyo_1/views/upcoming_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => GetSearch(), 
            child: DScreen(),),
          ChangeNotifierProvider(
            create: (context) => GetPlaying(),
           child: NowShowing(),),
          ChangeNotifierProvider(
            create: (context) => GetUpcoming(), 
            child: UPCS(),),
          ChangeNotifierProvider(
            create: (context) => GetTopRated(), 
            child: TRated(),),
          ChangeNotifierProvider(
            create: (context) => GetPopular(), 
            child: PopularSC(),),
        ],
        child: DScreen(),
      )
    );
  }
}

