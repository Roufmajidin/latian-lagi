import 'package:flutter/material.dart';

class Novel1 extends StatefulWidget {
  const Novel1({ Key? key }) : super(key: key);

  @override
  State<Novel1> createState() => _Novel1State();
}

class _Novel1State extends State<Novel1> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
       
        title: new Text("Buku-ku", style: new TextStyle(color: Colors.black12),),
      ),
      body: ListView(
        children: <Widget>[
          new ListBuku(
            gambar:
                "https://1.bp.blogspot.com/-ahfic6a_Lhg/XQTdP19t3LI/AAAAAAAABtE/IrhUkcoCrcAmKkNeNUY8EQy7j73JjN4cgCLcBGAs/s1600/IMG_20190615_182313.jpg",
            judul: "Senja & Pagi",
          ),
          new ListBuku(
            gambar: "https://www.bukukita.com/babacms/displaybuku/102657_f.jpg",
            judul: "Senja & Luka",
          ),
          new ListBuku(
            gambar:
                "https://ecs7.tokopedia.net/img/cache/700/product-1/2018/4/13/0/0_c25a60be-b09b-45b4-b01c-af3cc2603c9f_720_719.jpg",
            judul: "pulang",
          ),
          new ListBuku(
            gambar:
                "https://www.bukukita.com/babacms/displaybuku/95467_f.jpg",
            judul: "Pada Senja ",
          ),
          // new ListBuku(
          //   gambar:
          //       "https://i.pinimg.com/474x/0a/6a/1b/0a6a1b73f739b7be43991df089e3bcea.jpg",
          //   judul: "Bintang tak Lagi Menanti Senja",
          // ),
          new ListBuku(
            gambar:
                "https://th.bing.com/th/id/R.cea30a635915f5f1a7743a8996f62415?rik=KdZP%2fmlR%2fXK0jw&riu=http%3a%2f%2fi.gr-assets.com%2fimages%2fS%2fcompressed.photo.goodreads.com%2fbooks%2f1478753579i%2f27032214._UY630_SR1200%2c630_.jpg&ehk=E2lwd1LTKwQTBFh7zazv0Nf6kaNxq2lqr1l66rqrns0%3d&risl=&pid=ImgRaw&r=0",
            judul: "Senja, Hujan & Cerita", 
          )
        ],
      ),
    );
  }
}

class ListBuku extends StatelessWidget {
  ListBuku({required this.gambar, required this.judul});

  final String gambar;
  final String judul;
  @override
  Widget build(BuildContext context) {
    return new Container(
        padding: new EdgeInsets.all(
          20.0,
        ),
        child: new Center(
          child: new Row(
            children: <Widget>[
              new Image(
                image: new NetworkImage(gambar),
                width: 100.0,
              ),
              new Container(
                padding: new EdgeInsets.all(20.0),
                child: new Center(
                    child: new Column(
                  children: <Widget>[
                    new Text(
                      judul,
                      
                      style: new TextStyle(fontSize: 20.0),
                    ),
                    new Text(
                      "ini deksripsi .................",
                      style: new TextStyle(fontSize: 15.0, color: Colors.amber),
                    ),
                  
                  ],
                )),
              )
              
            ],
          ),
        ));
  }
}