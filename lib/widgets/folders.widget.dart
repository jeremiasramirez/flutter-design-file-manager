import 'package:flutter/material.dart';

class FolderFiles extends StatelessWidget {
  Widget build(context) {
    return Table(
      children: [
        TableRow(children: [
          this.folder('assets/favorite.png', "My Favorite"),
          this.folder('assets/photos.png', "My Photos"),
        ]),
        TableRow(children: [
          this.folder('assets/music.png', "My Music"),
          this.folder('assets/folder.png', "Portfolio"),
        ])
      ],
    );
  }

  Widget folder(String image, String title) {
    return Container(
        width: 150,
        height: 170,
        decoration: BoxDecoration(
            color: Colors.grey[200], borderRadius: BorderRadius.circular(25)),
        margin: EdgeInsets.only(bottom: 18, left: 10, right: 10),
        padding: EdgeInsets.only(top: 15, left: 20, right: 15),
        child: Column(
          children: [
            this.topFolder(image),
            this.titleFolder(title),
            this.createdAt()
          ],
        ));
  }

  Widget titleFolder(String title) {
    return Container(
        margin: EdgeInsets.only(left: 10, top: 20, bottom: 18),
        alignment: Alignment.topLeft,
        child: Text(title,
            style: TextStyle(
                fontSize: 21,
                color: Color.fromRGBO(10, 10, 120, 1),
                fontWeight: FontWeight.bold)));
  }

  Widget topFolder(String image) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [this.imageToFolder(image), this.openMenuToFolder()]);
  }

  Widget openMenuToFolder() {
    return Icon(
      Icons.more_vert_outlined,
      color: Colors.grey[500],
      size: 30,
    );
  }

  Widget imageToFolder(String image) {
    return Image(
        width: 60,
        height: 70,
        // placeholder: AssetImage('assets/loading.gif'),
        image: AssetImage(image));
  }

  Widget createdAt() {
    return Text("Created\t\t 03/2021\t\t\t\t\t\t\t\t\t\t\t\t",
        style: TextStyle(color: Colors.grey[500], fontWeight: FontWeight.bold));
  }
}
