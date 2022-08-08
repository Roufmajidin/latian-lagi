import 'package:flutter/material.dart';

class Novel2 extends StatefulWidget {
  const Novel2({Key? key}) : super(key: key);

  @override
  State<Novel2> createState() => _Novel2State();
}

class _Novel2State extends State<Novel2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Color.fromARGB(234, 255, 252, 252),
        title: new Center(
          child: new Text(
            "Halaman Buku Edu",
            style: new TextStyle(color: Colors.black12),
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          new ListBuku(
              gambar:
                  "https://tse2.mm.bing.net/th/id/OIP.f1IsLm5OWOu25wUIRs4qyADMEx?w=185&h=277&c=7&r=0&o=5&pid=1.7",
              judul: "Bahasa Indonesia"),
          new ListBuku(
              gambar:
                  "https://tse4.mm.bing.net/th/id/OIP.4a-bhMJrx3gnm1oKU2Li8wHaKk?w=185&h=264&c=7&r=0&o=5&pid=1.7",
              judul: "Pendidikan KewargaNegaraan"),
          new ListBuku(
              gambar:
                  "https://tse1.mm.bing.net/th/id/OIP.MNq9mVQ7nyTy4Sw4Zg1MaQHaK_?w=185&h=274&c=7&r=0&o=5&pid=1.7",
              judul: "Filsafat"),
          new ListBuku(
              gambar:
                  "https://tse2.mm.bing.net/th/id/OIP.bQsHNpzMJdrkOgD2Kx4mCwHaK_?w=185&h=274&c=7&r=0&o=5&pid=1.7",
              judul: "Filsafat Matermatika")
        ],
      ),
    );
  }
}

class ListBuku extends StatelessWidget {
  ListBuku({required this.gambar, required this.judul});

  final String judul;
  final String gambar;

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(20.0),
      child: new Center(
        
        child: new Card(
          child: new ListTile(
            leading: Card(
              child: Image.network(gambar, fit: BoxFit.fill, ),

              
            
            ),
            title: new Text(judul, style: new TextStyle(letterSpacing: 2.5),),
            subtitle: Text ("swwd",),
            

          ),
          
          
        ),
        
        
        
      ),
    
    );
    
  }
}
