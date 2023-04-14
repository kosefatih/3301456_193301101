import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              DrawerHeader(
                  child: Icon(
                Icons.account_circle_outlined,
                size: 125,
              )),
              ListTile(
                  leading: Icon(Icons.favorite),
                  title: Text('Favoriler'),
                  onTap: () {}),
              ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Ayarlar'),
                  onTap: () {}),
              ListTile(
                  leading: Icon(Icons.exit_to_app),
                  title: Text('Çıkış yap'),
                  onTap: () {
                    Navigator.pushNamed(context, 'giris');
                  }),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: Center(child: Text('Word Swallow')),
        ),
        body: InkWell(onTap: () {
Navigator.pushNamed(context, 'kelimeler');
        },
        child: Container(
            alignment: Alignment.center,
          child: Text(
            'Başla!',
                style: TextStyle(color:Colors.black,fontSize: 30)
          ),
        )),
    );
  }
}
