import 'package:flutter/material.dart';

class Sonuc extends StatefulWidget {
  const Sonuc({Key? key}) : super(key: key);

  @override
  State<Sonuc> createState() => _SonucState();
}

class _SonucState extends State<Sonuc> {
  int puan = 0;

  Widget sonucyazi(int puan) {
    if (puan < 20)
      return Text('Dil seviyeniz A1 ve ortalama 500 kelime biliyorsunuz!',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),);
    else if(puan > 19 && puan < 40) return Text('Dil seviyeniz A2 ve ortalama 1000 kelime biliyorsunuz!',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),);
        else if(puan > 39 && puan < 60) return Text('Dil seviyeniz B1 ve ortalama 2000 kelime biliyorsunuz!',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),);
        else if(puan > 59 && puan < 80) return Text('Dil seviyeniz B2 ve ortalama 4000 kelime biliyorsunuz!',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),);
    else return Text('Dil seviyeniz C ve ortalama 6000 ~ 8000 kelime biliyorsunuz!');
  }



  @override
  Widget build(BuildContext context) {
    List<dynamic>? data = [];
    data = ModalRoute.of(context)?.settings.arguments as List?;
    puan = data![0];

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Quiz Sonucunuz',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
            Text(puan.toString()+'/100',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),
            sonucyazi(puan),
            SizedBox(height: 50,),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, 'anasayfa');
            }, child: Text('Tekrar çöz'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.greenAccent
              ),
            )
            
            
          ],
        ),
      ),
    );
  }
}
