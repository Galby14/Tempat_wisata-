import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'tempat wisata.dart';

class Aboutme extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[400],
      appBar: AppBar(


        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => input()));
          },
        ),
        title: Text("Tentang Saya"),
        centerTitle: true,
      ),
      body: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

        padding: EdgeInsets.only(top: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset('assets/profile.jpeg',width: 150, height: 150,)
                ),
                Text(
                  "Putu Ayu Intan Galby Catriesya",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 25,
                    height: 2.0,
                  ),
                ),

                Container(
                  padding: EdgeInsets.only(top: 20, right: 20, bottom: 20),
                  child:  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ContainIcon("1815051070", Icons.credit_card, Colors.black),
                      ContainIcon(
                           "PTI 4B", Icons.class_, Colors.black),
                      ContainIcon( "Undiksha", Icons.class_,
                          Colors.black),

                    ],
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}

//container dari kotak yang berisi icon
class ContainIcon extends StatelessWidget {

  final String isi;
  final IconData icon;
  final Color warna;
  const ContainIcon( this.isi, this.icon, this.warna);
  @override
  Widget build(BuildContext context) {
    return
          Container(
            color: Colors.blue[400],
            margin: EdgeInsets.only(top: 24),
            width: 250,
            height: 50,
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 20),
                  child: Icon(
                    icon,
                    size: 40,
                    color: warna,
                  ),
                ),


                TextBox(isi),
              ],
            )

          );

  }
}

//untuk text di dalam kotak
class TextBox extends StatelessWidget {
  final String isi;
  const TextBox(this.isi);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        isi,
        style: TextStyle(height: 1.3, fontSize: 18, color: Colors.white),
      ),
    );
  }
}
