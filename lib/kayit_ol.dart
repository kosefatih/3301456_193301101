import 'package:flutter/material.dart';

class Kayitol extends StatefulWidget {
  const Kayitol({Key? key}) : super(key: key);

  @override
  State<Kayitol> createState() => _KayitolState();
}

class _KayitolState extends State<Kayitol> {
  late String name;
  late String lastname;
  late String username;
  late String password;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        elevation: 0,
      ),
      body: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.greenAccent),
                      ),
                      labelText: 'İsim'),
                  validator: (deger) {
                    if (deger!.isEmpty) {
                      return 'İsim giriniz';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (deger) {
                    name = deger!;
                  },
                ),
                SizedBox(height: 28),
                TextFormField(
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.greenAccent),
                      ),
                      labelText: 'Soyisim'),
                  validator: (deger) {
                    if (deger!.isEmpty) {
                      return 'Soyisim giriniz';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (deger) {
                    lastname = deger!;
                  },
                ),
                SizedBox(height: 28),
                TextFormField(
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.greenAccent),
                      ),
                      labelText: 'Kullanıcı adı'),
                  validator: (deger) {
                    if (deger!.isEmpty) {
                      return 'Kullanıcı adını giriniz';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (deger) {
                    username = deger!;
                  },
                ),
                SizedBox(height: 28),
                TextFormField(
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.greenAccent),
                      ),
                      labelText: 'Şifre'),
                  validator: (deger) {
                    if (deger!.isEmpty) {
                      return 'Şifreyi giriniz';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (deger) {
                    password = deger!;
                  },
                ),
                SizedBox(height: 75),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            showDialog(context: context, builder: (BuildContext context){
                              return AlertDialog(
                                content: Text('Kayıt olundu'),
                              );
                            });
                          }
                          else {
                            _formKey.currentState?.save();
                          }
                        },
                        child: Text(
                          'Kayıt ol',
                          style: TextStyle(
                              fontSize: 20,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        )),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, right: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.create),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
