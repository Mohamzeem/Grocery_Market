// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';

class ProfileListTile extends StatelessWidget {
  final Icon leading;
  Widget? subtitle;
  Widget? trailing;
  final String title;
  Function()? onTap;
  ProfileListTile({
    Key? key,
    required this.leading,
    this.subtitle,
    this.trailing,
    required this.title,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading,
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge,
      ),
      subtitle: subtitle,
      trailing: trailing,
      onTap: onTap,
    );
  }
}
