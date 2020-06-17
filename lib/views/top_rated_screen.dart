import 'package:flutter/material.dart';
import 'package:gdg_uyo_1/view_models/top_rated_view_model.dart';
import 'package:gdg_uyo_1/widgets/details_widget.dart';
import 'package:provider_architecture/provider_architecture.dart';

class TRated extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<GetTopRated>.withConsumer(
      onModelReady: (model) => model.topRated(),
      viewModelBuilder: () => GetTopRated(),
      builder: (context, model, _) => Container(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: model.topRtvm.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TopRatedDetails(
                        topRated: model.topRtvm[index],
                      ),
                    ),
                  );
                },
                child: Container(
                  height: 150,
                  width: 100,
                  child: Image.network(
                    'https://image.tmdb.org/t/p/w500${model.topRtvm[index].posterPath}',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
