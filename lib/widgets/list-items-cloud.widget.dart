import 'package:flutter/material.dart';
import 'package:flutter_manager/widgets/safe.widget.dart';
import 'package:flutter_manager/widgets/separated.widget.dart';

import 'banner-home.widget.dart';
import 'cloud-items.widget.dart';

List<Widget> listItemsCloud(BuildContext context) {
  return [
    Safe(BannerHome()),
    Separated(0, 30),
    Safe(GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, 'home/files');
        },
        child: CloudItems("iCloud", "64% available", "assets/icloud.png"))),
    Safe(GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, 'home/files');
        },
        child: CloudItems(
            "Google Drive", "80% available", "assets/google-drive.png"))),
    Safe(GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, 'home/files');
        },
        child: CloudItems("Dropbox", "10% available", "assets/dropbox.png"))),
    Safe(GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, 'home/files');
        },
        child: CloudItems("Mega", "50% available", "assets/mega.png"))),
  ];
}
