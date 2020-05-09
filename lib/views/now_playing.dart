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
            return Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: Image.network(model.play[index].postaPath),
              );
          }
        ),
      ),
    );
  }
}