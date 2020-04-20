import 'package:flutter/material.dart';
import 'package:tempat_wisata/tampilan.dart';
import 'about.dart';

class input extends StatefulWidget {
  @override
  _inputState createState() => _inputState();
}

class _inputState extends State<input> {
  String tempat;
  String lokasi;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      appBar: AppBar(
        backgroundColor: Colors.grey[500],
        leading: Icon(Icons.home,color: Colors.black,),
        title: Text("Tempat Wisata",style: TextStyle(color: Colors.black),),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.contacts),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Aboutme()));
            },
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[

            Container(
              child: Text("Input Informasi Tempat Wisata Baru",
                style: TextStyle(fontSize: 50,fontFamily: 'Pacifico' ),textAlign: TextAlign.center,
            ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child:
                 TextField(
                  onChanged: (txt) {
                    setState(() {
                      tempat = txt;
                    });
                  },
                  textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: 'Raleway',fontStyle: FontStyle.italic,fontSize: 20),
                  decoration:
                  InputDecoration(filled: true,
                      hintText: 'Tempat Wisata',

                      fillColor: Colors.white,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(100))
                  ),

                ),

            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child:
              TextField(
                onChanged: (txt) {
                  setState(() {
                    lokasi = txt;
                  });
                },
                textAlign: TextAlign.center,
                style: TextStyle(fontFamily: 'Raleway',fontStyle: FontStyle.italic,fontSize: 20),
                decoration:
                InputDecoration(filled: true,
                    hintText: 'Lokasi',

                    fillColor: Colors.white,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(100))
                ),

              ),

            ),

            Container(
              //height: double.infinity,
              margin: EdgeInsets.only(left: 100, right: 100, bottom: 20,top: 30),

              child: RaisedButton(
            onPressed: (){
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => tampil(
                tempat_wisata: tempat,
                lokasi_wisata: lokasi,

              ))
              );
            },
                padding: EdgeInsets.only(top: 10, bottom: 10),
                color: Colors.grey[500],

                child: Text(
                  'Tambah',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500,fontFamily: 'Raleway'),
                ),

              ),
            ),

          ],
        ),

      ),
    );
    

  }
}
