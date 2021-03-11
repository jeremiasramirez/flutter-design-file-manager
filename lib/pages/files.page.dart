import 'package:flutter/material.dart';
import 'package:flutter_manager/widgets/banner-file.widget.dart';
import 'package:flutter_manager/widgets/leading-title.widget.dart';
 
class FilesPage extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          physics:BouncingScrollPhysics(),
          
          children: [

            BannerFile(),
            LeadingTitle(),
            FolderFiles()

          ],

        )
      )
    );
  }
}


class FolderFiles extends StatelessWidget{


  Widget build(context){

    return Table(
      children: [


        TableRow(
          children: [

            this.folder('https://cdn.pixabay.com/photo/2021/03/08/04/45/star-6078119_640.png', "My Favorite"), 
            this.folder('https://cdn.pixabay.com/photo/2021/03/08/04/45/gallery-6078122_640.png', "My Photos"), 

          ]
        ),
        TableRow(
          children: [

            this.folder('https://cdn2.iconfinder.com/data/icons/music-player-18/32/Play-512.png',"My Music"), 
            this.folder('https://cdn.pixabay.com/photo/2021/03/08/04/45/files-6078121_640.png', "Portfolio"), 

          ]
        )

      ],
    );
  }
 
  Widget folder(String image, String title){

    return Container(
      width: 150,
      height: 170,
      decoration: BoxDecoration(
        color:Colors.grey[200],
        borderRadius: BorderRadius.circular(20)
      ),
      margin:EdgeInsets.only(bottom: 18, left:10, right:10),
      padding:EdgeInsets.only(top:20,left:8, right:8),
      child: Column(

        children: [
            this.topFolder(image),
            this.titleFolder(title)
        ],

      )
    );

  }
  Widget titleFolder(String title){
    
    return Container(
      margin:EdgeInsets.only(left:10,top:20),
      alignment:Alignment.topLeft,
      child:Text(
        title,
        style:TextStyle(
          fontSize: 21,
          color:Color.fromRGBO(10, 10, 120, 1),
          fontWeight:FontWeight.bold
        )
      )


    );
  }

  Widget topFolder(String image){

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [ 

        this.imageToFolder(image),
        this.openMenuToFolder()

      ]
    );
  }

 Widget openMenuToFolder(){
   return Icon(Icons.more_vert_outlined,color:Colors.grey[500],size: 30,);
 }

 Widget imageToFolder(String image){
   return FadeInImage(
     width:60,
     height:60,
     placeholder: AssetImage('assets/loading.gif'),
     image: NetworkImage(image)
  );
 }

}

