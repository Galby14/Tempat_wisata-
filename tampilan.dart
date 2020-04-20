import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class tampil extends StatelessWidget {
  tampil({
    this.tempat_wisata,
    this.lokasi_wisata

});
  final String tempat_wisata;
  final String lokasi_wisata;


  @override
  Widget build(BuildContext context) {
    String gambar;
    if(tempat_wisata == 'Tegegunungan Waterfall')
      gambar = 'https://bit.ly/2zgNeIZ';
    if(tempat_wisata == "Bukit Campuhan")
      gambar = 'https://bit.ly/2xGLoR2';
    if(tempat_wisata != 'Tegegunungan Waterfall' && tempat_wisata != "Bukit Campuhan")
      gambar = 'https://bit.ly/2RLHPzV';
   
    return Scaffold(
      backgroundColor: Colors.pink[500],
       appBar: AppBar(
        title: Text('Hasil'),
      ),

      body: SingleChildScrollView(
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[

            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(top: 30,left: 30,right: 30,),
              child: Center(
                child: Image.network(gambar,
                  height: 160,
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border.all(
                    width: 10,
                    color: Colors.grey[500],
                  )
              ),

            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.all(30),
              color: Colors.blue[300],
              child: Column(
                children: <Widget>[
                  Text("Nama Tempat Wisata",style: TextStyle(fontSize: 30,fontFamily: 'Raleway'),),
                  Text(tempat_wisata,style: TextStyle(fontSize: 30,fontFamily: 'Pacifico'),),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.all(30),
              color: Colors.blue[300],
              child: Column(
                children: <Widget>[
                  Text("Lokasi Tempat Wisata",style: TextStyle(fontSize: 30,fontFamily: 'Raleway'),),
                  Text(lokasi_wisata,style: TextStyle(fontSize: 30,fontFamily: 'Pacifico'),),

                ],
              ),
            ),


          ],
        ),
      )
    );
  }
}



