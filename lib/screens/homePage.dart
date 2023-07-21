import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My Friends'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: GridView.builder(
              itemCount: 10,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:
                      MediaQuery.of(context).size.width <= 400.0 ? 3 : 4,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                  childAspectRatio:
                      MediaQuery.of(context).size.width < 400.0 ? 0.6 : 1),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: 100,
                  height: 80,
                  color: Colors.blue,
                  child: Text(index.toString()),
                );
              }),
        ));
  }
}
