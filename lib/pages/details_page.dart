import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../model/british_museum.dart';
import '../widget/AR_scene_button.dart';

class DetailsScreen extends StatelessWidget {
  final Collection collection;
  const DetailsScreen({Key?key, required this.collection}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orange,
        appBar: buildAppBar(context),
        body:Body(
          collection: collection,
          ),
        );
  }
}

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      padding: EdgeInsets.only(left: 20),
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

class Body extends StatelessWidget {
  final Collection collection;
  const Body({Key?key, required this.collection}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      bottom:false,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              decoration: const BoxDecoration(
                color:Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child:Hero(
                      tag: collection.name,
                      child: CollectionPoster(
                        size: size,
                        image: collection.image,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      collection.name,
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                  Text(
                    collection.date,
                    style:const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black45,
                    ),
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      collection.description,
                      style:const TextStyle(
                        color:Colors.black45,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  const SizedBox(height:20.0),
                ],
              ),
            ),
            const SizedBox(height:30),
            const ARSceneButton(),
          ],
        ),
      ),
    );
  }
}

class CollectionPoster extends StatelessWidget {
  const CollectionPoster({
    Key?key,
    required this.size,
    required this.image,
  }) : super(key: key);

  final Size size;
  final String image;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20.0),
      // the height of this container is 80% of our width
      height: size.width * 0.8,

      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Container(
            height: size.width * 0.7,
            width: size.width * 0.7,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
          Image.asset(
            image,
            height: size.width,
            width: size.width,
            fit: BoxFit.fitWidth,
          ),
        ],
      ),
    );
  }
}

