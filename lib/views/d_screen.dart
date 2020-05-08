import 'package:flutter/material.dart';
import 'package:gdg_uyo_1/view_models/moviesearch_view_model.dart';
import 'package:provider_architecture/provider_architecture.dart';

class DScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<GetSearch>.withConsumer(
      viewModelBuilder: () => GetSearch(),
      onModelReady: (model) => model.serReq('batman'),
      builder: (context,model,_) => Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: (){},)
          ],),
        body: ListView(),
      ),
    );
  }
}