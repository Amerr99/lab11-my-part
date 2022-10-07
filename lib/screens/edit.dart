import 'package:english/components/appbar.dart';
import 'package:english/components/profilewidget.dart';
import 'package:english/components/text_field_widget.dart';
import 'package:english/models/user.dart';
import 'package:english/utils/user_preferences.dart';
import 'package:flutter/material.dart';

class Edit_Profile extends StatefulWidget {
  const Edit_Profile({super.key});

  @override
  State<Edit_Profile> createState() => _Edit_ProfileState();
}

class _Edit_ProfileState extends State<Edit_Profile> {
  User user = UserPrefernces.myUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(context),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 32),
          physics: BouncingScrollPhysics(),
          children: [
            ProfileWidget(
              isEdit: true,
              imagePath: user.imagePath,
              onClicked: () {},
            ),
            const SizedBox(
              height: 24,
            ),
            MyTextField(
              label: 'Full Name',
              text: user.name,
              onChanged: (name) {},
            ),
            const SizedBox(
              height: 24,
            ),
            MyTextField(
              label: 'Email',
              text: user.email,
              onChanged: (email) {},
            ),
            const SizedBox(
              height: 24,
            ),
            MyTextField(
              maxLines: 5,
              label: 'About',
              text: user.about,
              onChanged: (about) {},
            ),
          ],
        ));
  }
}
