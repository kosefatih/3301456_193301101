import 'package:flutter/material.dart';
import 'package:wordswallow/ana_sayfa.dart';
import 'package:wordswallow/giris_sayfasi.dart';
import 'package:wordswallow/kayit_ol.dart';
import 'package:wordswallow/kelimeler.dart';
import 'package:wordswallow/sonuc.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'giris',
      routes: {
        'giris': (context) => GirisSayfasi(),
        'kayit': (context) => Kayitol(),
        'anasayfa': (context) => Anasayfa(),
        'kelimeler': (context) => Kelimeler(),
        'sonuc': (context) => Sonuc()
      },
  ));
}


