import 'package:flutter/material.dart';
import 'package:wordswallow/sonuc.dart';

class Kelimeler extends StatefulWidget {
  const Kelimeler({Key? key}) : super(key: key);

  @override
  State<Kelimeler> createState() => _KelimelerState();
}



class _KelimelerState extends State<Kelimeler> {

  int ekrandakisoru = 0;
  String ekrandakicevap = '';
  int puan = 0;


  @override
  void initState() {
    super.initState();
    ekrandakisoru = 0;
    ekrandakicevap = '';
    puan = 0;
  }


  void BitireYolla(){
    var data = [];
    data.add(puan);
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Sonuc(),
          settings: RouteSettings(
            arguments: data,
          ),
        ));
  }


  void kontrolEt() {
    if (ekrandakisoru > 23) {
      ekrandakisoru = 0;
      BitireYolla();
    } else {
      if (ekrandakicevap == sorular[ekrandakisoru]['dogrucevap']) {
        puan = puan + 4;
        ekrandakisoru++;
      } else {
        ekrandakisoru++;
      }
    }
  }

  var sorular = [
    {
      'soru': 'Drawing',
      'cevaplar': ['Çizmek', 'Yutmak', 'Sızmak'],
      'dogrucevap': 'Çizmek'
    },
    {
      'soru': 'Grape',
      'cevaplar': ['Mezar', 'Üzüm', 'Kivi'],
      'dogrucevap': 'Üzüm'
    },
    {
      'soru': 'Chewing',
      'cevaplar': ['Sallanmak', 'Boğulmak', 'Çiğnemek'],
      'dogrucevap': 'Çiğnemek'
    },
    {
      'soru': 'Permanent',
      'cevaplar': ['Yasak', 'Geçici', 'Kalıcı'],
      'dogrucevap': 'Kalıcı'
    },
    {
      'soru': 'Contestant',
      'cevaplar': ['Zorunlu', 'Yarışmacı', 'İçerik'],
      'dogrucevap': 'Yarışmacı'
    },
    {
      'soru':
      'Religion',
      'cevaplar': ['Akraba', 'Din', 'Bağlı'],
      'dogrucevap': 'Din'
    },
    {
      'soru':
      'Lamp',
      'cevaplar': ['Lamba', 'Koyun', 'Yün'],
      'dogrucevap': 'Lamba'
    },
    {
      'soru': 'Roast',
      'cevaplar': ['Buhar', 'Haşlamak', 'Pas'],
      'dogrucevap': 'Haşlamak'
    },
    {
      'soru': 'Blame',
      'cevaplar': ['Alev', 'Bıçak', 'Suçlamak'],
      'dogrucevap': 'Suçlamak'
    },
    {
      'soru': 'Onion',
      'cevaplar': ['Soğan', 'Birlik', 'Pırasa'],
      'dogrucevap': 'Soğan'
    },
    {
      'soru': 'Foundation',
      'cevaplar': ['İcat', 'Vakıf', 'İnanç'],
      'dogrucevap': 'Vakıf'
    },
    {
      'soru': 'Generous',
      'cevaplar': ['Cimri', 'Cömert', 'Bencil'],
      'dogrucevap': 'Cömert'
    },
    {
      'soru': 'Hazard',
      'cevaplar': ['Zararlı', 'Kanat', 'Bakteri'],
      'dogrucevap': 'Zararlı'
    },
    {
      'soru': 'Salary',
      'cevaplar': ['Maaş', 'Salata', 'Atıştırmalık'],
      'dogrucevap': 'Maaş'
    },
    {
      'soru': 'Impact',
      'cevaplar': ['İmkansız', 'Etki', 'Hızlı'],
      'dogrucevap': 'Etki'
    },
    {
      'soru': 'Innocent',
      'cevaplar': ['Masum', 'Erken', 'Suçlu'],
      'dogrucevap': 'Masum'
    },
    {
      'soru': 'Ministry',
      'cevaplar': ['Gizli', 'Minyatür', 'Bakanlık'],
      'dogrucevap': 'Bakanlık'
    },
    {
      'soru': 'Seat',
      'cevaplar': ['Masa', 'Koltuk', 'Tekne'],
      'dogrucevap': 'Koltuk'
    },
    {
      'soru': 'Pedestrian',
      'cevaplar': ['Yaya', 'Avcı', 'Hamile'],
      'dogrucevap': 'Yaya'
    },
    {
      'soru': 'Queue',
      'cevaplar': ['Sıra', 'Sessiz', 'Yakın'],
      'dogrucevap': 'Sıra'
    },
    {
      'soru': 'Peasant',
      'cevaplar': ['Kişilik', 'Köylü', 'Korku'],
      'dogrucevap': 'Köylü'
    },
    {
      'soru': 'Principal',
      'cevaplar': ['Prensip', 'Özellik', 'Müdür'],
      'dogrucevap': 'Müdür'
    },
    {
      'soru': 'Resemble',
      'cevaplar': ['Benzemek', 'Unutmak', 'Dönüşüm'],
      'dogrucevap': 'Benzemek'
    },
    {
      'soru': 'Trousers',
      'cevaplar': ['Ceket', 'Pantolon', 'Hırsız'],
      'dogrucevap': 'Pantolon'
    },
    {
      'soru': 'Spicy',
      'cevaplar': ['Acı', 'Ajan', 'Özel'],
      'dogrucevap': 'Acı'
    },
  ];

  @override
  Widget build(BuildContext context) {

    var cevaplistesi = [];

    for (var obj in sorular) {
      cevaplistesi.add(obj['cevaplar']);
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200.0,
              margin: EdgeInsets.only(bottom: 10.0, left: 30.0, right: 30.0),
              padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(
                child: Text(sorular[ekrandakisoru]['soru'].toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            Text(
              'Puan: ' + puan.toString(),
              style: TextStyle(fontSize: 25),
            ),
            InkWell(
              onTap: (){
                setState(() {
                  ekrandakicevap = cevaplistesi[ekrandakisoru][0];
                });
                kontrolEt();
              },
              child: Container(
                padding: EdgeInsets.all(15.0),
                margin: EdgeInsets.symmetric(vertical: 5.0,horizontal: 30.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(20.0)
                ),
                child: Text(cevaplistesi[ekrandakisoru][0],style: TextStyle(fontSize: 25)),
              ),
            ),
            InkWell(
              onTap: (){
                setState(() {
                  ekrandakicevap = cevaplistesi[ekrandakisoru][1];
                });
                kontrolEt();
              },
              child: Container(
                padding: EdgeInsets.all(15.0),
                margin: EdgeInsets.symmetric(vertical: 5.0,horizontal: 30.0),
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(20.0)
                ),
                child: Text(cevaplistesi[ekrandakisoru][1],style: TextStyle(fontSize: 25)),
              ),
            ),
            InkWell(
              onTap: (){
                setState(() {
                  ekrandakicevap = cevaplistesi[ekrandakisoru][2];
                });
                kontrolEt();
              },
              child: Container(
                padding: EdgeInsets.all(15.0),
                margin: EdgeInsets.symmetric(vertical: 5.0,horizontal: 30.0),
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(20.0)
                ),
                child: Text(cevaplistesi[ekrandakisoru][2],style: TextStyle(fontSize: 25)),
              ),
            ),
            Text(
              ekrandakisoru.toString() +
                  ' / ' +
                  (sorular.length-1).toString(),
              style: TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}