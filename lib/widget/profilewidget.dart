import 'package:flutter/material.dart';

class ProfileIndo extends StatelessWidget {
  const ProfileIndo(this.title, this.value, {super.key, this.onTap});

  final String title;
  final String value;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              value,
              style: TextStyle(fontSize: 16.0),
            ),
            Divider(), // Add a horizontal line between items for better separation
          ],
        ),
      ),
    );
  }
}
