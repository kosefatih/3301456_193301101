import 'package:flutter/material.dart';

class GirisSayfasi extends StatefulWidget {
  const GirisSayfasi({Key? key}) : super(key: key);

  @override
  State<GirisSayfasi> createState() => _GirisSayfasiState();
}

class _GirisSayfasiState extends State<GirisSayfasi> {
  late String username;
  late String password;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                SizedBox(height: 40),
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
                SizedBox(height: 100),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: (){
                        if (_formKey.currentState!.validate()) {
                          Navigator.pushNamed(context, 'anasayfa');
                        }
                        else {
                          _formKey.currentState?.save();
                        }
                      },
                        child: Text('Giriş yap',
                          style: TextStyle(fontSize: 20,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                    ),
                    TextButton(
                      onPressed: (){
                        Navigator.pushNamed(context, 'kayit');
                      },
                        child: Text('Kayıt ol', style: TextStyle(fontSize: 20,
                            decoration: TextDecoration.underline,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),)
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, right: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Icon(Icons.arrow_forward),
                      Icon(Icons.create),

                  ],
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}
