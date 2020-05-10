import 'package:flutter/material.dart';
import 'package:gdg_uyo_1/view_models/popular_view_model.dart';
import 'package:provider_architecture/provider_architecture.dart';

class PopularSC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<GetPopular>.withConsumer(
      onModelReady: (model) => model.popoular(),
      viewModelBuilder: () => GetPopular(),
      builder: (context, model, _) => Container(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: model.popu.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: Image.network('https://image.tmdb.org/t/p/w500${model.popu[index].postaPath}'),
                ),
        );
      })
      )
    );
  }
}