import 'package:flutter/material.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 100,
      width: 100,
      child: CircleAvatar(
        backgroundImage: NetworkImage(
          'https://images.healthshots.com/healthshots/en/uploads/2020/12/08182549/positive-person.jpg'
        ),
      ),
    );
  }
}