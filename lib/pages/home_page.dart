import 'package:flutter/material.dart';
import '../widget/category_card.dart';
import '../widget/category_list.dart';
import '../widget/search_box.dart';
import '../model/british_museum.dart';
import 'details_page.dart';

class StatusPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF8F8F8),
        textTheme: Theme.of(context).textTheme.apply(displayColor: const Color(
            0xFF1F0E0E),),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      backgroundColor: Colors.orange,
      body:Body(),
    );
  }
}

AppBar buildAppBar() {
  return AppBar(
    backgroundColor:Colors.orange,
    elevation: 0,
    centerTitle: true,
    title: const Text('Collections Gallery'),
  );
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        bottom: false,
        child: Column(
          children: <Widget>[
            SearchBox(onChanged: (value) {}),
            const CategoryList(),
            const SizedBox(height: 10.0),
            Expanded(
                child: Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top:70),
                      decoration: const BoxDecoration(
                        color:Color(0xFFF1EFF1),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                      ),
                    ),
                    ListView.builder(
                      itemCount: collections.length,
                      itemBuilder: (context, index) => CategoryCard(
                          itemIndex: index,
                          collection:collections[index],
                          press: (){}
                      ),
                    )
                  ],
                )
            )
          ],
        )
    );
  }
}

