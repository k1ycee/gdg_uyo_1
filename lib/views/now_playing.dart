import 'package:flutter/material.dart';
import 'package:gdg_uyo_1/view_models/now_playing_view_model.dart';
import 'package:provider_architecture/provider_architecture.dart';

class NowShowing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<GetPlaying>.withConsumer(
      viewModelBuilder: () => GetPlaying(),
      onModelReady: (model) => model.plays(),
      builder: (context, model, _) => Container(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: model.play.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),),
                  child: Container(
                  height: 150,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),),
                  child: Image.network('https://image.tmdb.org/t/p/w500${model.play[index].postaPath}'),
                  ),
              ),
            );
          }
        ),
      ),
    );
  }
}