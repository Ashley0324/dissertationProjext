import 'package:babylonjs_viewer/babylonjs_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ModelPage extends StatelessWidget {
  const ModelPage({
    Key?key,
    required this.model
  }) : super(key: key);
  final String model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body:ModelViewer(model:model),
    );
  }
}

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      padding: const EdgeInsets.only(left: 20),
      icon: SvgPicture.asset("images/back.svg"),
      onPressed: () {
        Navigator.pop(context);
      },
    ),
    centerTitle: false,
    title: Text(
      'Back'.toUpperCase(),
      style: Theme.of(context).textTheme.bodyText2,
    ),
    actions: <Widget>[
      IconButton(
        icon: SvgPicture.asset('assets/icons/cart_with_item.svg'),
        onPressed: () {},
      ),
    ],
  );
}

class ModelViewer extends StatelessWidget {
  const ModelViewer({Key? key, required this.model}) : super(key: key);
  final String model;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orange,
        appBar: buildAppBar(context),
        body: BabylonJSViewer(
          src: this.model,
        ),
      ),
    );
  }
}

