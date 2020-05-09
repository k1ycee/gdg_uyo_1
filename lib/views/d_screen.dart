import 'package:flutter/material.dart';
import 'package:gdg_uyo_1/view_models/moviesearch_view_model.dart';
import 'package:gdg_uyo_1/views/now_playing.dart';
import 'package:provider_architecture/provider_architecture.dart';

class DScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<GetSearch>.withConsumer(
      viewModelBuilder: () => GetSearch(),
      onModelReady: (model) => model.serReq("Batman"),
      builder: (context,model,_) => Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: (){},)
          ],),
        body: Container(
          alignment: Alignment.topCenter,
          height: 120,
          width: 400,
          child: Row(
              children: <Widget>[
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: model.ser.length,
                    itemBuilder: (context, index) => Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),),
                      height: 100,
                      width: 100,
                      child: Image.network('https://image.tmdb.org/t/p/w500${model.ser[index].postaPath}')
                      )
                    ),
                  ),
               ],
            ),
          ),
        )
    );
  }
}