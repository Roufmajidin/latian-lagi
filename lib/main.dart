import 'package:flutter/material.dart';
import './halamanNovel1.dart' as Novel1;
import './halamanBukuEdukasi.dart' as Novel2;

void main(){
  runApp(new MaterialApp(
    title: "mayap",
    home: new Home(),
  

  ));
}

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController controller;
  @override
  void initState(){
    controller = new TabController(vsync: this, length: 2);
    super.initState();
  }



 @override
  void dispose(){
    controller.dispose();

    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: new AppBar(
        title: new Center(
          child: new Text("Aplikasiku", style:  new TextStyle(color: Color.fromARGB(255, 238, 232, 232)),),
        ),
        backgroundColor: Color.fromARGB(235, 82, 20, 20),
        bottom: new TabBar(
          controller: controller,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.book, color:Colors.blueGrey,),
              text: "Fiction Novel",
            ),
             Tab(
              icon: Icon(Icons.info_outline, color: Colors.blueGrey,),
              text: "Edu Novel",
            ),
             
              
          ],
        ),
        
        
      ),
      // body: new Center(
      //   child: new Text("isi Halaman"),
        
      // ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new Novel1.Novel1(),
          new Novel2.Novel2(),


        ],
        ),
     

      
    );
  }
}