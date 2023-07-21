import 'package:assignment/models/friendsmodel.dart';
import 'package:assignment/widget/profilewidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  friendsmodel friend = Get.arguments as friendsmodel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20.0),
            CircleAvatar(
              radius: 80.0,
              backgroundImage: NetworkImage(friend.picture!.large!),
            ),
            SizedBox(height: 20.0),
            ProfileIndo(
                'Name',
                friend.name!.title! +
                    ' ' +
                    friend.name!.first! +
                    ' ' +
                    friend.name!.last!),
            ProfileIndo(
              'Email',
              friend.email!,
              onTap: () async {
                String? encodeQueryParameters(Map<String, String> params) {
                  return params.entries
                      .map((MapEntry<String, String> e) =>
                          '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
                      .join('&');
                }

                final Uri url = Uri(
                  scheme: 'mailto',
                  path: 'smith@example.com',
                  query: encodeQueryParameters(<String, String>{
                    'subject': 'Example Subject & Symbols are allowed!',
                  }),
                );
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                } else {
                  throw Exception('Could not launch $url');
                }
              },
            ),
            ProfileIndo('Phone', friend.phone!),
            ProfileIndo('City', friend.location!.city!),
            ProfileIndo(
                'Address',
                friend.location!.state! +
                    ', ' +
                    friend.location!.postcode! +
                    ', ' +
                    friend.location!.country!),
          ],
        ),
      ),
    );
  }
}
