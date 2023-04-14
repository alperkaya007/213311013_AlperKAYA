import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mesaj Uygulaması",
      home: Iskele(),
    );
  }
}

class Iskele  extends StatelessWidget {
  @override
Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Mesaj Uygulama Arayüzü"),
      ),
      body: AnaEkran(),
    );
 }
}

class AnaEkran extends StatefulWidget {
  @override
  _AnaEkranState createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {

TextEditingController t1 = TextEditingController();

  List mesajListesi = [];

  mesajlariEkle() {
    setState(() {
    mesajListesi.insert(0,t1.text);
    t1.clear();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(40),
      child: Column(children:<Widget> [
        Flexible(child: ListView.builder(
          reverse: true,
          itemCount: mesajListesi.length,
          itemBuilder:( context, int indeksNumarasi) =>
            Text(mesajListesi[indeksNumarasi]),
        ),
        ),
        Row(children:<Widget> [
          Flexible(
            child: TextField(
            controller: t1,
          ), ),

          ElevatedButton(onPressed: mesajlariEkle, child: Text("Gönder"),
          ),
        ],),

      ],
      ),
    );
  }
}
