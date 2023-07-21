import 'package:assignment/config/routeName.dart';
import 'package:assignment/controller/initialController.dart';
import 'package:assignment/models/friendsmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
          padding: const EdgeInsets.all(5),
          child: GetBuilder<InitialController>(builder: (initcontroller) {
            return GridView.builder(
                itemCount: initcontroller.friendList.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:
                        MediaQuery.of(context).size.width <= 400.0 ? 2 : 4,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0,
                    childAspectRatio:
                        MediaQuery.of(context).size.width < 400.0 ? 0.8 : 0.9),
                itemBuilder: (BuildContext context, int index) {
                  friendsmodel friend = initcontroller.friendList[index];
                  return GestureDetector(
                    onTap: () {
                      Get.toNamed(RoutesName.profile, arguments: friend);
                    },
                    child: Card(
                      elevation: 1.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 55.0,
                            backgroundImage:
                                NetworkImage(friend.picture!.medium!),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            friend.name!.title! + ' ' + friend.name!.first!,
                            style: const TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5.0),
                          Text(friend.location!.country!),
                        ],
                      ),
                    ),
                  );
                });
          }),
        ));
  }
}
