import 'package:flutter/material.dart';
import 'package:gdg_uyo_1/view_models/moviesearch_view_model.dart';
import 'package:gdg_uyo_1/views/now_playing.dart';
import 'package:gdg_uyo_1/views/popular_screen.dart';
import 'package:gdg_uyo_1/views/top_rated_screen.dart';
import 'package:gdg_uyo_1/views/upcoming_screen.dart';
import 'package:provider_architecture/provider_architecture.dart';

class DScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<GetSearch>.withConsumer(
      viewModelBuilder: () => GetSearch(),
      builder: (context,model,_) => Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: (){},)
          ],),
        body: Container(
          child: ListView(
              children: <Widget>[
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text('Now Showing'),
                ),
                  Container(
                  height: 160,
                  width: 400,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: NowShowing()
                        ),
                      ],
                    ),
                  ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text('Popular'),
                ),
                  Container(
                  height: 160,
                  width: 400,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: PopularSC()
                        ),
                      ],
                    ),
                  ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text('Top Rated'),
                ),
                  Container(
                  height: 160,
                  width: 400,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: TRated()
                        ),
                      ],
                    ),
                  ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text('Upcoming'),
                ),
                Container(
                  height: 160,
                  width: 400,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: UPCS()
                        ),
                      ],
                    ),
                  )
               ],
            ),
          ),
        )
    );
  }
}