import 'package:doa_app/data.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blueAccent),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Doa Harian', style: TextStyle(color: Colors.white54)),
          centerTitle: true,
        ),
        body: TampilanUtama(),
      ),
    );
  }
}

class TampilanUtama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: nama_doa.length,
        itemBuilder: (BuildContext context, int position) {
          return Padding(
            padding: const EdgeInsets.all(9.0),
            child: Card(
              elevation: 4.0,
              child: ListTile(
                onTap: () {},
                title: Padding(
                  padding: const EdgeInsets.only(top: 6.0),
                  child: Text(
                    nama_doa[position],
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                subtitle: Text(
                  arab_doa[position],
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          );
        });
  }
}
